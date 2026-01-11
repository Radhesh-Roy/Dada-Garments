import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:dadagarments/cart.dart';
import 'package:dadagarments/category.dart';
import 'package:dadagarments/discount.dart';
import 'package:dadagarments/homePage.dart';
import 'package:flutter/material.dart';
//import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  List screen=[Homepage(),CategoryPage(), CartPage(), CartPage(), DiscountPage()];

  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screen[_currentIndex],
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          iconTheme: IconThemeData(color: Color(0xff757575), size: 26),
        ),
        child: CurvedNavigationBar(
          backgroundColor: Colors.white,
          buttonBackgroundColor: Color(0xffF08F3C).withAlpha(70),
          color: Color(0xffF08F3C).withAlpha(70),
          height: 72,
          items: [
            Icon(Icons.home_outlined),
            Icon(Icons.list),
            Icon(Icons.search_outlined),
            Icon(Icons.shopping_bag_outlined),
            Icon(Icons.bookmark_outline),
          ],
          index: _currentIndex,
          onTap: (value) {
            setState(() {
              _currentIndex=value;
            });
          },
        ),
      ),

    );

  }
}
