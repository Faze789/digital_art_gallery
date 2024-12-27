import 'package:digital_art_gallery_app/art_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PaintingHomeScreen extends StatefulWidget {
  PaintingHomeScreen({super.key});

  @override
  State<PaintingHomeScreen> createState() => PaintingHomeScreenState();
}

class PaintingHomeScreenState extends State<PaintingHomeScreen> {
  final List<Color> colorPalette = [
    Colors.brown[900]!, // Dark brown
    Colors.brown[700]!, // Brown
    Colors.brown[800]!, // Dark brown
    Colors.brown[500]!, // Medium brown
    Colors.grey[900]!, // Medium grey
    Colors.brown[300]!, // Light brown
    Colors.brown[900]!, // Dark brown
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.of(context).pushAndRemoveUntil(
              MaterialPageRoute(builder: (context) => art_screen()),
              (Route<dynamic> route) => false,
            );
          },
        ),
        title: const Text('Painting Screen'),
        centerTitle: true,
        backgroundColor: Colors.brown[900],
      ),
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Image.asset(
              'assets/page1.png',
              fit: BoxFit.cover,
              height: 550,
              width: double.infinity,
            ),
          ),
          Positioned(
            top: 50,
            left: 0,
            right: 0,
            bottom: 0,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10.0,
                  mainAxisSpacing: 30.0,
                  childAspectRatio: 0.5,
                ),
                itemBuilder: (context, index) {
                  String image_url;

                  String image_description = 'data will be assigned';

                  if (index == 0) {
                    image_url = 'p1.png';
                    image_description = 'Nature with colors';
                  } else if (index == 1) {
                    image_description = 'Rain with life';
                    image_url = 'p2.png';
                  } else if (index == 2) {
                    image_url = 'p3.png';
                    image_description = 'Life with colors';
                  } else if (index == 3) {
                    image_url = 'p4.png';
                    image_description = 'Life with love';
                  } else if (index == 4) {
                    image_url = 'p5.png';
                    image_description = 'The Life';
                  } else if (index == 5) {
                    image_url = 'p6.png';
                    image_description = 'Nature colors';
                  } else if (index == 6) {
                    image_url = 'p7.png';
                    image_description = 'The inevitable Bond';
                  } else if (index == 7) {
                    image_url = 'p8.png';
                    image_description = 'Memories of the Past';
                  } else if (index == 8) {
                    image_url = 'p9.png';
                    image_description = 'Peace';
                  } else if (index == 9) {
                    image_url = 'p10.png';
                    image_description = 'Family ';
                  } else {
                    image_url = 'default.png';
                  }

                  return Container(
                    color: colorPalette[index % colorPalette.length],
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/$image_url',
                          height: 220,
                          width: 130,
                          fit: BoxFit.cover,
                        ),
                        const SizedBox(height: 8),
                        Text(
                          image_description,
                          style: GoogleFonts.adventPro(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  );
                },
                itemCount: 10,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
