import 'package:flutter/material.dart';

import 'package:cupertino_icons/cupertino_icons.dart';
//import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class MySta extends StatelessWidget {
  const MySta({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedItemColor: Colors.white,
      showUnselectedLabels: true,
      unselectedLabelStyle: TextStyle(color: Colors.white),
      unselectedItemColor: Colors.white,
      backgroundColor: Color.fromARGB(255, 0, 0, 0),
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home,
            color: Colors.white,
          ),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.explore,
            color: Colors.white,
          ),
          label: 'Explore',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.chat_bubble_outline,
            color: Colors.white,
          ),
          label: 'Chat',
        ),
      ],
    );
  }
}
