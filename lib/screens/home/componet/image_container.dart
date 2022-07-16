import 'package:flutter/material.dart';

class ImageContainer extends StatelessWidget {
  final String image;
  const ImageContainer({
    Key? key,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.circular(10.0),
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.cover,
        ),
      ),
      width: MediaQuery.of(context).size.width,
      height: 210,
    );
  }
}
