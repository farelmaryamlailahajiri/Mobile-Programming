import 'package:flutter/material.dart';

class GalleryPage extends StatelessWidget {
  const GalleryPage({super.key});

  final List<String> _images = const [
    'assets/images/pic1.jpg',
    'assets/images/pic2.jpg',
    'assets/images/pic1.jpg',
    'assets/images/pic2.jpg',
    'assets/images/pic1.jpg',
    'assets/images/pic2.jpg',
    'assets/images/pic1.jpg',
    'assets/images/pic2.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final crossAxis = width > 800 ? 4 : width > 600 ? 3 : 2;

    return Scaffold(
      appBar: AppBar(title: const Text('Galeri Foto')),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: crossAxis,
            crossAxisSpacing: 12,
            mainAxisSpacing: 12,
            childAspectRatio: 1,
          ),
          itemCount: _images.length,
          itemBuilder: (context, index) {
            final img = _images[index];
            return GestureDetector(
              onTap: () => _openPreview(context, img, index),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(img, fit: BoxFit.cover),
              ),
            );
          },
        ),
      ),
    );
  }

  void _openPreview(BuildContext context, String img, int index) {
    showDialog(
      context: context,
      builder: (_) => Dialog(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            AspectRatio(
              aspectRatio: 4 / 3,
              child: Image.asset(img, fit: BoxFit.cover),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Foto ${index + 1}'),
            ),
            TextButton(onPressed: () => Navigator.pop(context), child: const Text('Tutup')),
          ],
        ),
      ),
    );
  }
}