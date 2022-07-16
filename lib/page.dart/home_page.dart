import 'package:amazon_prime_api/componet/tabBarView_home.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      initialIndex: 0,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Prime Video'),
          bottom: TabBar(
            labelPadding: EdgeInsets.only(bottom: 15.0),
            indicatorColor: Colors.white,
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorWeight: 3.0,
            tabs: [
              buildText('Home'),
              buildText('TV Shows'),
              buildText('Movies'),
              buildText('Kids'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            TabBarViewHomePage(),
            Center(
              child: Text('tab2'),
            ),
            Center(
              child: Text('tab3'),
            ),
            Center(
              child: Text('tab4'),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildText(String text) {
    return Text(
      text,
      style: TextStyle(
        color: Colors.white,
        fontSize: 13.0,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
