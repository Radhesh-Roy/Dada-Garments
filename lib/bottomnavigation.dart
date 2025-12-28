import 'package:dadagarments/category.dart';
import 'package:dadagarments/homePage.dart';
import 'package:flutter/material.dart';
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _currentIndex = 2;
  final List<Widget> pages = [
    Center(child: Text("Home")),
    Center(child: Text("Category")),
    Center(child: Text("Cart")),
    Center(child: Text("Profile")),
  ];
  final iconList = <IconData>[
    Icons.home,
    Icons.category,
    Icons.shopping_cart,
    Icons.person,
  ];
  @override
  Widget build(BuildContext context) {


  return Scaffold(
    floatingActionButton: FloatingActionButton(onPressed: () {  },
      //params
    ),
    floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    bottomNavigationBar: AnimatedBottomNavigationBar(
      icons: iconList,
      activeIndex: _currentIndex,
      gapLocation: GapLocation.center,
      notchSmoothness: NotchSmoothness.smoothEdge,
      onTap: (index) => setState(() => _currentIndex = index),
      //other params
    ),
  );}
}
//     return Scaffold(
//       bottomNavigationBar: BottomNavigationBar(
//         currentIndex: 0,
//         onTap: (value) {
//           if(value==0){
//             Navigator.push(context, MaterialPageRoute(builder: (context) => Homepage(title: '',),));
//           }
//           else if(value==1){
//             Navigator.push(context,MaterialPageRoute(builder: (context) => CategoryPage(),));
//           }
//         },
//         items: [
//           BottomNavigationBarItem(icon: Icon(Icons.home, ), label: "Homes"),
//           BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: "Cart"),
//           BottomNavigationBarItem(icon: Icon(Icons.settings_outlined), label: "Setting")
//
//         ])
//     );
//   }
// }
