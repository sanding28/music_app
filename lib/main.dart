import 'package:flutter/material.dart';
import 'package:music_app/controls.dart';
import 'poster.dart';
import 'NavBar.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Color.fromRGBO(234, 255, 128, 0.6),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          NavBar(),
          Container(
            height: height / 2.5,
            child: ListView.builder(
              itemBuilder: (context, index) {
                return PosterLagu();
              },
              itemCount: 3,
              scrollDirection: Axis.horizontal,
            ),
          ),
          Text(
            'Imagine Dragons',
            style: GoogleFonts.lato(
                textStyle: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.w500,
                    color: Colors.black54)),
          ),
          Text(
            'Believer',
            style: GoogleFonts.lato(
                textStyle: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w300,
                    color: Colors.black54)),
          ),
          SliderTheme(
            data: SliderThemeData(
              trackHeight: 2,
              thumbShape: RoundSliderThumbShape(enabledThumbRadius: 6),
            ),
            child: Slider(
              activeColor: Color.fromRGBO(17, 26, 0, 0.6),
              inactiveColor: Color.fromRGBO(17, 26, 0, 0.3),
              value: 8,
              onChanged: (value) {
                
              },
              min: 1,
              max: 60,
            ),
          ),
          ControlsButton(),
          SizedBox(height: 105,)
          
        ],
      ),
    );
  }
}
