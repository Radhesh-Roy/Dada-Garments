import 'package:dadagarments/category.dart';
import 'package:dadagarments/homePage.dart';
import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        onTap: (value) {
          if(value==0){
            Navigator.push(context, MaterialPageRoute(builder: (context) => Homepage(title: '',),));
          }
          else if(value==1){
            Navigator.push(context,MaterialPageRoute(builder: (context) => CategoryPage(),));
          }
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home, ), label: "Homes"),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: "Cart"),
          BottomNavigationBarItem(icon: Icon(Icons.settings_outlined), label: "Setting")

        ])
    );
  }
}
