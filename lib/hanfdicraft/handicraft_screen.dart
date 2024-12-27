import 'package:digital_art_gallery_app/art_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class handicraft_screen extends StatefulWidget {
  const handicraft_screen({super.key});

  @override
  State<handicraft_screen> createState() => _handicraft_screenState();
}

class _handicraft_screenState extends State<handicraft_screen> {
  final List<Color> colorPalette = [
    Colors.brown[900]!, 
    Colors.brown[700]!, 
    Colors.brown[800]!, 
    Colors.brown[500]!, 
    Colors.grey[900]!, 
    Colors.brown[300]!, 
    Colors.brown[900]!, 
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
        title: const Text('Photography Screen'),
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
                    image_url = 'c1.png';
                    image_description = 'Nature with colors';
                  } else if (index == 1) {
                    image_description = 'Life with colors';
                    image_url = 'c2.png';
                  } else if (index == 2) {
                    image_url = 'c3.png';
                    image_description = 'Antique Designs';
                  } else if (index == 3) {
                    image_url = 'c4.png';
                    image_description = 'Crafts with love';
                  } else if (index == 4) {
                    image_url = 'c5.png';
                    image_description = 'Skills of the craftsman';
                  } else if (index == 5) {
                    image_url = 'c6.png';
                    image_description = 'Handicrafts';
                  } else if (index == 6) {
                    image_url = 'c7.png';
                    image_description = 'Watch Handicrafts';
                  } else if (index == 7) {
                    image_url = 'c8.png';
                    image_description = 'Handicrafts with watch';
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
                itemCount: 8,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
