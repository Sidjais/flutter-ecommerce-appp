import 'package:toast/toast.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ecom/models/orders.dart';
import 'package:provider/provider.dart';
import '../models/cart.dart';
import '../widgets/cart_item.dart';
var amount;
class Payment extends StatefulWidget {
  Payment(var amt){
    amount=amt;
  }
  @override
  _PaymentState createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {

  Razorpay razorpay;
  TextEditingController textEditingController = new TextEditingController();

  @override
  void initState() {
    super.initState();

    razorpay = new Razorpay();

    razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS, handlerPaymentSuccess);
    razorpay.on(Razorpay.EVENT_PAYMENT_ERROR, handlerErrorFailure);
    razorpay.on(Razorpay.EVENT_EXTERNAL_WALLET, handlerExternalWallet);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    razorpay.clear();
  }

  Widget openCheckout(){
    var options = {
      "key" : "rzp_test_eD5MenTE7vV0PP",
      "amount" : amount*100,//num.parse(textEditingController.text)*100,
      "name" : "Sample App",
      "description" : "Payment for the some random product",
      "prefill" : {
        "contact" : "2323232323",
        "email" : "shdjsdh@gmail.com"
      },
      "external" : {
        "wallets" : ["paytm"]
      }
    };

    try{
      razorpay.open(options);

    }catch(e){
      print(e.toString());
    }


  }

  void handlerPaymentSuccess(){
    print("Pament success");
    Toast.show("Pament success", context);
  }

  void handlerErrorFailure(){
    print("Pament error");
    Toast.show("Pament error", context);
  }

  void handlerExternalWallet(){
    print("External Wallet");
    Toast.show("External Wallet", context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Razor Pay Tutorial"),
      ),
       body: openCheckout()

      //Padding(
      //   padding: const EdgeInsets.all(30.0),
      //   child: Column(
      //     children: [
      //       TextField(
      //         controller: textEditingController,
      //         decoration: InputDecoration(
      //             hintText: "amount to pay"
      //         ),
      //       ),
      //       SizedBox(height: 12,),
      //       RaisedButton(
      //         color: Colors.blue,
      //         child: Text("Donate Now", style: TextStyle(
      //             color: Colors.white
      //         ),),
      //         onPressed: (){
      //           openCheckout();
      //         },
      //       )
      //     ],
      //   ),
      // ),
    );
  }
}


