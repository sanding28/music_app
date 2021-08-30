import 'package:flutter/material.dart';

class PosterLagu extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 260,
      width: 260,
      padding: EdgeInsets.all(12),
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Image.asset('assets/cover.jpg', fit: BoxFit.fill,),
      ),
      decoration: BoxDecoration(
        color: Color.fromRGBO(234, 255, 128, 0.1),
        borderRadius: BorderRadius.circular(1),
        boxShadow: [
            BoxShadow(
            color:Color.fromRGBO(234, 255, 198, 0), 
            offset: Offset(20,8),
            spreadRadius: 3,
            blurRadius: 25,
          ),
        ],
      ),
    );
  }
}