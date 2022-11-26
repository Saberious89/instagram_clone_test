import 'package:flutter/material.dart';
import './add_post_screen.dart';
import './fave_screen.dart';
import './my_home_screen.dart';
import './profile_screen.dart';
import './search_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currIndex = 0;
  final List<Widget> _screens = const [
    MyHomeScreen(),
    SearchScreen(),
    AddPostScreen(),
    FaveScreen(),
    ProfileScreen(),
  ];

  void _navigate(int tabIndex) {
    setState(() {
      _currIndex = tabIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        selectedItemColor: Colors.black,
        currentIndex: _currIndex,
        onTap: _navigate,
        items: const [
          BottomNavigationBarItem(
            label: '',
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: Icon(Icons.search),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: Icon(Icons.add_box_outlined),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: Icon(Icons.favorite_border),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: Icon(Icons.person),
          ),
        ],
      ),
    );
  }
}
