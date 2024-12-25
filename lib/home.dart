import 'package:digital_art_gallery_app/art_screen.dart';
import 'package:flutter/material.dart';

class home extends StatelessWidget {
  const home({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Digital Art Gallery'),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(190, 104, 58, 183),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF6A1B9A), Color(0xFF8E24AA)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Center(
          child: Container(
            width: screenSize.width * 0.8,
            height: screenSize.height * 0.7,
            color: Colors.blueGrey.withOpacity(0.8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                buildElevatedButton(context, 'Sign In', Colors.pink, 20),
                buildElevatedButton(context, 'Sign UP', Colors.purpleAccent, 19),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildElevatedButton(BuildContext context, String data, Color color, double fontSize) {
    return ElevatedButton(
      onPressed: () {
        if (data == 'Sign In') {
          Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(builder: (context) => art_screen()),
            (Route<dynamic> route) => false,
          );
        } else {
          print('Sign Up');
        }
      },
      child: Text(data, style: TextStyle(color: color, fontSize: fontSize)),
    );
  }
}
