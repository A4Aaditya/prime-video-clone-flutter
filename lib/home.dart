import 'package:amazon_prime_api/screens/home/home.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int selectedIndex = 0;
  final List screens = [
    HomeScreen(),
    Center(
      child: Text('Store'),
    ),
    Center(
      child: Text('Channels'),
    ),
    Center(
      child: Text('Find'),
    ),
    Center(
      child: Text('My Stuff'),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: selectedIndex,
        onTap: (value) {
          setState(() {
            selectedIndex = value;
          });
        },
        selectedItemColor: Colors.blue[500],
        unselectedItemColor: Colors.white,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag_outlined),
            label: 'Store',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.line_style_outlined),
            label: 'Channels',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search_outlined),
            label: 'Find',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.circle_notifications_rounded),
            label: 'My Stuff',
          ),
        ],
      ),
    );
  }
}
