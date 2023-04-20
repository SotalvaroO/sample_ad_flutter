import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../foundation/color_fundation.dart';

class OwnFooter extends StatelessWidget{
  final Icon iconLeft;
  final Icon iconRight;

  OwnFooter({
    this.iconRight = const Icon(Icons.airline_seat_individual_suite),
    this.iconLeft = const Icon(Icons.add_a_photo)
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 100.0,
        child: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: this.iconLeft,
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: this.iconRight,
              label: 'School',
            ),
          ],
          currentIndex: 0,
          selectedItemColor: selectedItemColor,
          unselectedItemColor: unselectedItemColor,
          backgroundColor: footer_background,
          showUnselectedLabels: false,
          showSelectedLabels: false,
          iconSize: 30.0,
          onTap: (index) {
            print('oprimio el elemento --> ' + index.toString());
          },
        )
    );
  }
}