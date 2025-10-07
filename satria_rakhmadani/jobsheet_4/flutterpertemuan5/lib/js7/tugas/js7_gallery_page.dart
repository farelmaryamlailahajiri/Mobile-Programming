import 'package:flutter/material.dart';

class GalleryPage extends StatelessWidget {
  const GalleryPage({super.key});

  final List<String> images = const [
    'assets/images/pic1.jpg',
    'assets/images/pic2.jpg',
    'assets/images/myway.jpg',
    'assets/images/pic1.jpg',
    'assets/images/pic2.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Galeri'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: GridView.builder(
          itemCount: images.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: MediaQuery.of(context).size.width > 600 ? 4 : 2,
            mainAxisSpacing: 8,
            crossAxisSpacing: 8,
            childAspectRatio: 1,
          ),
          itemBuilder: (context, index) {
            final img = images[index];
            return GestureDetector(
              onTap: () {
                // buka fullscreen sederhana
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (_) => ImagePreviewPage(imagePath: img),
                ));
              },
              child: Hero(
                tag: img + index.toString(),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(img, fit: BoxFit.cover),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

class ImagePreviewPage extends StatelessWidget {
  final String imagePath;
  const ImagePreviewPage({required this.imagePath, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Hero(
          tag: imagePath + '0',
          child: Image.asset(imagePath),
        ),
      ),
    );
  }
}
