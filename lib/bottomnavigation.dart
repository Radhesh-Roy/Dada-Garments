import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:dadagarments/category.dart';
import 'package:dadagarments/homePage.dart';
import 'package:flutter/material.dart';
//import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _currentIndex = 2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            _currentIndex=value;
          },
        ),
      ),

    );

  }
}
   // floatingActionButton: FloatingActionButton(onPressed: () {  })
      //params
 //   ),
    //floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    // bottomNavigationBar: AnimatedBottomNavigationBar(
    //   icons: iconList,
    //   activeIndex: _currentIndex,
    //   gapLocation: GapLocation.center,
    //   notchSmoothness: NotchSmoothness.smoothEdge,
    //   onTap: (index) => setState(() => _currentIndex = index),
      //other params
//     ),
//   );}
// }
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
