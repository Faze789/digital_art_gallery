import 'package:flutter/material.dart';

class art_screen extends StatefulWidget {
  @override
  _art_screenState createState() => _art_screenState();
}

class _art_screenState extends State<art_screen> {
  final List<Color> colorPalette = [
    Colors.brown[900]!, // Dark brown
    Colors.brown[700]!, // Brown
    Colors.brown[900]!, // Dark brown
    Colors.brown[500]!, // Medium brown
    Colors.grey[900]!, // Medium grey
    Colors.brown[300]!, // Light brown
    Colors.brown[900]!, // Dark brown
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Art Screen'),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            bottom: 0,
            child: Image.asset(
              'assets/page.png',
              fit: BoxFit.cover,
              width: double.infinity,
              height: double.infinity,
            ),
          ),
          Positioned(
            top: 50,
            left: 0,
            right: 0,
            bottom: 0,
            child: GridView.builder(
              padding: const EdgeInsets.all(16.0),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 40.0,
                mainAxisSpacing: 16.0,
                childAspectRatio: 0.8,
              ),
              itemBuilder: (context, index) {
                String imageName_url;

                String imageName;
                if (index == 0) {
                  imageName_url = 'painting.png';
                  imageName = 'painting';
                } else if (index == 1) {
                  imageName_url = 'photogrpahy.png';
                  imageName = 'photograpahy';
                } else if (index == 2) {
                  imageName_url = 'sketching.png';
                  imageName = 'sketching';
                } else {
                  imageName_url = 'handicraft.png';
                  imageName = 'handicraft';
                }

                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    color: colorPalette[index % colorPalette.length],
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/$imageName_url',
                          width: 100,
                          height: 100,
                          fit: BoxFit.cover,
                        ),
                        SizedBox(height: 8.0),
                        Text(
                          imageName.toUpperCase(),
                          style: const TextStyle(fontStyle: FontStyle.italic, fontSize: 12, color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                );
              },
              itemCount: 4,
            ),
          ),
        ],
      ),
    );
  }
}
