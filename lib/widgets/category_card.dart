import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  final Icon icon;
  final String name;
  final Function gg;
  CategoryCard(this.icon, this.name,this.gg);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: gg,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                blurRadius: 5,
                color: Colors.blueGrey
              )
            ],
          ),
          width: MediaQuery.of(context).size.width/4,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: <Widget>[
                icon,
                SizedBox(height: 10,),
                Text(name, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
