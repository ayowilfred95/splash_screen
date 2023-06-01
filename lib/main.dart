import 'package:flutter/material.dart';
import 'package:splash_screen/pages/mount_app.dart';

const Color mainColor = Color(0xFFFF5656);

void main() {
  runApp(const MaterialApp(debugShowCheckedModeBanner: false, home: Splash()));
}

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    // using future delay to navigate to our home screen routes
    // screens in flutter is widget
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => const MountApp()));
    });

    return Container(
      padding: const EdgeInsets.only(bottom: 30),
      color: mainColor,
      child: const Stack(
        children: [
          Align(
            alignment: Alignment.center,
            child: Icon(
              Icons.terrain,
              color: Colors.white,
              size: 90.0,
            ),
          ),
          Align(
              alignment: Alignment.bottomCenter,
              child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation(Colors.white)))
        ],
      ),
    );
  }
}
