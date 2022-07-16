import 'package:amazon_prime_api/screens/home/componet/image_container.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

class PrimeSlider extends StatefulWidget {
  const PrimeSlider({Key? key}) : super(key: key);

  @override
  State<PrimeSlider> createState() => _PrimeSliderState();
}

class _PrimeSliderState extends State<PrimeSlider> {
  int _currentIndex = 0;
  double index = 0.0;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CarouselSlider(
          items: [
            ImageContainer(image: 'img/images1.jpeg'),
            ImageContainer(image: 'img/images2.jpeg'),
            ImageContainer(image: 'img/images3.jpeg'),
            ImageContainer(image: 'img/images4.jpeg'),
            ImageContainer(image: 'img/images5.jpeg'),
            ImageContainer(image: 'img/images6.jpeg'),
          ],
          options: CarouselOptions(
            onPageChanged: (index, reason) {
              setState(() {
                _currentIndex = index;
              });
            },
            height: 210,
            viewportFraction: 1.0,
            autoPlay: true,
          ),
        ),
        Positioned(
          bottom: 0,
          right: 130.0,
          child: DotsIndicator(
            position: _currentIndex.toDouble(),
            dotsCount: 6,
            decorator: DotsDecorator(
              activeColor: Color.fromARGB(255, 219, 20, 6),
            ),
          ),
        ),
      ],
    );
  }
}
