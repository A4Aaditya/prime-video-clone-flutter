import 'package:amazon_prime_api/screens/home/home_tab.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
            HomeTab(),
            Center(child: Text('tab2')),
            Center(child: Text('tab3')),
            Center(child: Text('tab4')),
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
