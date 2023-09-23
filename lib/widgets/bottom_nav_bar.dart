import 'package:flutter/material.dart';
import 'package:sample_home/screens/home_screen.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  List<Widget> _pages = [
    MyHomePage(),
    Container(),
    Container(),
    Container(),
  ];

  int _selected = 0;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      unselectedItemColor: Colors.grey,
      selectedItemColor: Colors.white,
      currentIndex: _selected,
      onTap: (value) {
        onSelected(value);
      },
      items: [
        BottomNavigationBarItem(
            activeIcon: Container(
              height: 40,
              width: 40,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle, color: Colors.black),
              child: const Icon(
                Icons.home_outlined,
                color: Colors.white,
                size: 40,
              ),
            ),
            icon: Icon(
              Icons.home_outlined,
              weight: 2,
              size: 40,
            ),
            label: ''),
        BottomNavigationBarItem(
            activeIcon: Container(
              height: 40,
              width: 40,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle, color: Colors.black),
              child: const Icon(
                Icons.bookmark_outline_outlined,
                color: Colors.white,
                size: 40,
              ),
            ),
            icon: Icon(
              Icons.bookmark_outline_outlined,
              weight: 2,
              size: 40,
            ),
            label: ''),
        BottomNavigationBarItem(
            activeIcon: Container(
              height: 40,
              width: 40,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle, color: Colors.black),
              child: const Icon(
                Icons.notifications_outlined,
                color: Colors.white,
                size: 40,
              ),
            ),
            icon: Icon(
              Icons.notifications_outlined,
              weight: 2,
              size: 40,
            ),
            label: ''),
        BottomNavigationBarItem(
            activeIcon: Container(
              height: 40,
              width: 40,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle, color: Colors.black),
              child: const Icon(
                Icons.person_outline,
                color: Colors.white,
                size: 40,
              ),
            ),
            icon: Icon(
              Icons.person_outline,
              weight: 2,
              size: 40,
            ),
            label: ''),
      ],
    );
  }

  onSelected(int index) {
    setState(() {
      _selected = index;
    });
  }
}
