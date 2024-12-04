import 'package:flutter/material.dart';
import 'package:flutter_bottom_navigation_bar/screens/business_screen.dart';
import 'package:flutter_bottom_navigation_bar/screens/home_screen.dart';
import 'package:flutter_bottom_navigation_bar/screens/school_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  static const List<Widget> _screenOptions = <Widget>[
    HomeScreen(),
    BusinessScreen(),
    SchoolScreen()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screenOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          //item pertama
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          //item kedua
          BottomNavigationBarItem(
              icon: Icon(Icons.business), label: 'Business'),
          //item ketiga
          BottomNavigationBarItem(icon: Icon(Icons.school), label: 'School'),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        selectedItemColor: Colors.amber,
        unselectedItemColor: Colors.grey,
      ),
    );
  }
}
