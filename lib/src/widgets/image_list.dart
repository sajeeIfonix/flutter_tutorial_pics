import 'package:flutter/material.dart';
import '../models/image_model.dart';

class ImageList extends StatelessWidget {
  final List<ImageModel> images;

  const ImageList(this.images, {super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: images.length,
      itemBuilder: (BuildContext context, int index) {
        return buildImage(images[index]);
      },
    );
  }

  Container buildImage(ImageModel image) {
    return Container(
        margin: const EdgeInsets.all(20),
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
        decoration: BoxDecoration(
          border: Border.all(
            color: const Color.fromARGB(255, 224, 125, 125),
            width: 2,
          ),
        ),
        child: Column(
          children: <Widget>[
            Image.network(image.url),
            const SizedBox(height: 10),
            Text(image.title),
          ],
        ),
      );
  }
}
