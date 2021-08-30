import 'package:flutter/material.dart';

class ControlsButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Controls(icon: Icons.repeat),
          Controls(icon: Icons.skip_previous),
          PlayControls(),
          Controls(icon: Icons.skip_next,),
          Controls(icon: Icons.shuffle,),
        ],
      ),
    );
  }
}

class PlayControls extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: 80,
      decoration: BoxDecoration(
          color: Colors.black54,
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              color: Color.fromRGBO(234, 255, 128, 0.1),
              offset: Offset(7, 10),
              spreadRadius: 3,
              blurRadius: 8,
            ),
          ]),
          child: Stack(
        children: [
          Center(child: Container(
            margin: EdgeInsets.all(12),
            decoration: BoxDecoration(color:Color.fromRGBO(179, 179, 179, 0.6), shape: BoxShape.circle),
          ),),
          Center(child: Container(
            margin: EdgeInsets.all(6),
            decoration: BoxDecoration(color:Color.fromRGBO(234, 255, 128, 0.6), shape: BoxShape.circle),
            child:Center(child: Icon(Icons.play_arrow, size: 40, color: Colors.black54,)),
          ),)
        ],
      ),   
    );
  }
}

class Controls extends StatelessWidget {
  final IconData? icon;

  const Controls({Key? key, this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 60,
      decoration: BoxDecoration(
          color: Color.fromRGBO(234, 255, 128, 0.1),
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              color: Colors.black54,
              offset: Offset(5, 10),
              spreadRadius: 1,
              blurRadius: 10,
            ),
          ]),
      child: Stack(
        children: [
          Center(child: Container(
            margin: EdgeInsets.all(8),
            decoration: BoxDecoration(color:Color.fromRGBO(179, 179, 179, 0.6), shape: BoxShape.circle),
          ),),
          Center(child: Container(
            margin: EdgeInsets.all(6),
            decoration: BoxDecoration(color:Color.fromRGBO(234, 255, 128, 0.6), shape: BoxShape.circle),
            child:Center(child: Icon(icon, size: 25, color: Colors.black54,)),
          ),)
        ],
      ),      
    );
  }
}
