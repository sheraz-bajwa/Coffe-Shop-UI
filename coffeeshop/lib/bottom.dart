import 'package:flutter/material.dart';

import 'package:cupertino_icons/cupertino_icons.dart';
//import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class MySta extends StatelessWidget {
  const MySta({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.transparent,
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
            Icons.open_in_new_rounded,
            color: Colors.white,
          ),
          label: 'Open Dialog',
        ),
      ],
    );
  }
}
