import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';

class TabBarViewHomePage extends StatefulWidget {
  const TabBarViewHomePage({Key? key}) : super(key: key);

  @override
  State<TabBarViewHomePage> createState() => _TabBarViewHomePageState();
}

class _TabBarViewHomePageState extends State<TabBarViewHomePage> {
  int _currentIndex = 0;
  double index = 0.0;
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        // 1st component

        CarouselSlider(
          items: [
            buildContainer(image: 'img/images1.jpeg'),
            buildContainer(image: 'img/images2.jpeg'),
            buildContainer(image: 'img/images3.jpeg'),
            buildContainer(image: 'img/images4.jpeg'),
            buildContainer(image: 'img/images5.jpeg'),
            buildContainer(image: 'img/images6.jpeg'),
          ],
          options: CarouselOptions(
            onPageChanged: (index, reason) {
              setState(() {
                _currentIndex = index;
              });
            },
            height: 150,
            viewportFraction: 1.0,
            autoPlay: true,
          ),
        ),

        SizedBox(height: 10.0),
        Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: buildText(text: 'Watch in Your Language'),
        ),

        // 2nd component
        Padding(
          padding: EdgeInsets.only(left: 20.0, top: 10.0),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                buildScrollView(
                  image: 'img/images1.jpeg',
                  text: 'Hindi',
                ),
                SizedBox(width: 15.0),
                buildScrollView(
                  image: 'img/images2.jpeg',
                  text: 'English',
                ),
                SizedBox(width: 15.0),
                buildScrollView(
                  image: 'img/images3.jpeg',
                  text: 'Drama',
                ),
                SizedBox(width: 15.0),
                buildScrollView(
                  image: 'img/images4.jpeg',
                  text: 'Telugu',
                ),
                SizedBox(width: 15.0),
                buildScrollView(
                  image: 'img/images5.jpeg',
                  text: 'Bollywood',
                ),
                SizedBox(width: 15.0),
                buildScrollView(
                  image: 'img/images6.jpeg',
                  text: 'Tamil',
                ),
                SizedBox(width: 15.0),
              ],
            ),
          ),
        ),

        SizedBox(height: 10.0),
        Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: buildText(text: 'Free on Prime Video Channels >'),
        ),

        // 3rd component

        Padding(
          padding: EdgeInsets.only(left: 20.0, top: 10.0),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                buildScrollView(
                  image: 'img/images1.jpeg',
                  text: 'Hindi',
                ),
                SizedBox(width: 15.0),
                buildScrollView(
                  image: 'img/images2.jpeg',
                  text: 'English',
                ),
                SizedBox(width: 15.0),
                buildScrollView(
                  image: 'img/images3.jpeg',
                  text: 'Drama',
                ),
                SizedBox(width: 15.0),
                buildScrollView(
                  image: 'img/images4.jpeg',
                  text: 'Telugu',
                ),
                SizedBox(width: 15.0),
                buildScrollView(
                  image: 'img/images5.jpeg',
                  text: 'Bollywood',
                ),
                SizedBox(width: 15.0),
                buildScrollView(
                  image: 'img/images6.jpeg',
                  text: 'Tamil',
                ),
                SizedBox(width: 15.0),
              ],
            ),
          ),
        ),

        SizedBox(height: 10.0),
        Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: buildText(text: 'Top Movies >'),
        ),

        // 4th component

        Padding(
          padding: EdgeInsets.only(left: 20.0, top: 10.0),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                buildScrollView(
                  image: 'img/images1.jpeg',
                  text: 'Hindi',
                ),
                SizedBox(width: 15.0),
                buildScrollView(
                  image: 'img/images2.jpeg',
                  text: 'English',
                ),
                SizedBox(width: 15.0),
                buildScrollView(
                  image: 'img/images3.jpeg',
                  text: 'Drama',
                ),
                SizedBox(width: 15.0),
                buildScrollView(
                  image: 'img/images4.jpeg',
                  text: 'Telugu',
                ),
                SizedBox(width: 15.0),
                buildScrollView(
                  image: 'img/images5.jpeg',
                  text: 'Bollywood',
                ),
                SizedBox(width: 15.0),
                buildScrollView(
                  image: 'img/images6.jpeg',
                  text: 'Tamil',
                ),
                SizedBox(width: 15.0),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget buildContainer({required String image}) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(10.0),
            image: DecorationImage(
              image: AssetImage(image),
              fit: BoxFit.fill,
            ),
          ),
          width: MediaQuery.of(context).size.width,
          height: 150,
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

  Widget buildScrollView({required String image, required String text}) {
    return Stack(
      children: [
        Container(
          height: 200,
          width: 150,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            image: DecorationImage(
              image: AssetImage(image),
              fit: BoxFit.fill,
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
