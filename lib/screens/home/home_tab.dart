import 'package:amazon_prime_api/model/movie.dart';
import 'package:amazon_prime_api/screens/home/componet/horizontal_scroll_card.dart';
import 'package:amazon_prime_api/screens/home/componet/prime_slider.dart';
import 'package:flutter/material.dart';

class HomeTab extends StatefulWidget {
  const HomeTab({Key? key}) : super(key: key);

  @override
  State<HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        PrimeSlider(),
        HorizontalScrollCard(
          title: 'Watch in Your Language',
          movies: movies,
        ),
        HorizontalScrollCard(
          title: 'Free on Prime Video Channels >',
          movies: movies,
        ),
        HorizontalScrollCard(
          title: 'Top Movies',
          movies: movies,
        ),
      ],
    );
  }
}
