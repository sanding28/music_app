import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      margin: EdgeInsets.symmetric(horizontal: 20),
      alignment: Alignment.bottomCenter,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          NavBarItem(icon: Icons.arrow_back_ios,),
          Text('Play Now', style: TextStyle(fontSize: 20, color: Colors.black54, fontWeight: FontWeight.w500 ),),
          NavBarItem(icon: Icons.list,),
      ]),
    );
  }
}

class NavBarItem extends StatelessWidget {
  final IconData? icon;

  const NavBarItem({Key? key, this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 40,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color:Color.fromRGBO(234, 255, 158, 0.1), 
            offset: Offset(5,10),
            spreadRadius: 1,
            blurRadius: 10,
          ),
          
        ],
          color: Color.fromRGBO(234, 255, 128, 0.1),
          borderRadius: BorderRadius.circular(10)),
      child: Icon(icon, color: Colors.black54,),
    );
  }
}
