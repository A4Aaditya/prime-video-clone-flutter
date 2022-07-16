import 'package:amazon_prime_api/model/movie.dart';
import 'package:flutter/material.dart';

class HorizontalScrollCard extends StatelessWidget {
  final List<Movie> movies;
  final String title;
  const HorizontalScrollCard({
    Key? key,
    required this.title,
    required this.movies,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(20).copyWith(bottom: 0),
          child: buildText(text: title),
        ),
        SingleChildScrollView(
          padding: EdgeInsets.all(20).copyWith(bottom: 0),
          scrollDirection: Axis.horizontal,
          child: Row(
            children: movies.map((e) {
              return buildScrollView(
                image: e.imagePath,
                text: e.name,
              );
            }).toList(),
          ),
        ),
      ],
    );
  }

  Widget buildScrollView({required String image, required String text}) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Stack(
        children: [
          Container(
            height: 200,
            width: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            child: Text(
              text,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildText({required String text}) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 20.0,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
