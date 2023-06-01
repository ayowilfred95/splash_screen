import 'package:flutter/material.dart';
import 'package:splash_screen/main.dart';
import 'package:google_fonts/google_fonts.dart';

// ------- WIDGETS ------
class AppHeader extends StatelessWidget {
  const AppHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 30, top: 30, right: 30),
      child: Row(
        children: [
          const ClipOval(
            child: Image(
              image: AssetImage(
                'assets/avatar.jpg',
              ),
              width: 50,
              height: 50,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          Column(
            children: [
              Text(
                'Hello, Wilfred',
                style: GoogleFonts.lato(
                  textStyle: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    letterSpacing: 1.0,
                  ),
                ),
              ),
              Text(
                'Good morning',
                style: GoogleFonts.lato(
                  textStyle: const TextStyle(
                    color: mainColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    letterSpacing: 1.0,
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
