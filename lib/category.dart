import 'package:flutter/material.dart';

class CategoryPage extends StatefulWidget {
  const CategoryPage({super.key});

  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xffFFFFFF),
        leading:
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                color: Color(0xffF6F6F6),
                shape: BoxShape.circle,
              ),
              child: Padding(
                padding: EdgeInsetsGeometry.symmetric(horizontal: 10),
                child: Image.asset("assets/backImage.png", height: 22, width: 22),
              ),
            ),
          ),

        centerTitle: true,
        title: Text(
          "Categories",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: Color(0xff1E1E1E),
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsetsGeometry.symmetric(horizontal: 10),
            child: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                color: Color(0xffF6F6F6),
                shape: BoxShape.circle,
              ),
              child: Padding(
                padding: EdgeInsetsGeometry.symmetric(horizontal: 10),
                child: Image.asset("assets/bag.png", height: 24, width: 24),
              ),
            ),
          ),
        ],
      ),
      body: Padding(padding: EdgeInsets.all(10),
        child: Column(
          spacing: 10,
          children: [
          Row(
            children: [
              SizedBox(
                height: 45,
                width: 293,
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    prefixIcon: Image.asset(
                      "assets/search.png",
                      height: 14,
                      width: 14,
                    ),
                    hintText: "Search for Product",
                    hintStyle: TextStyle(color: Colors.grey),
                    fillColor: Colors.grey.shade100,
                    filled: true,
                  ),
                ),
              ),
              SizedBox(width: 10),
              Container(
                height: 45,
                width: 50,
                decoration: BoxDecoration(
                  color: Color(0xffF4A758),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Image.asset(
                  "assets/tune.png",
                  height: 20,
                  width: 20,
                ),
              ),
            ],
          ),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                children: [
                  Card(
                    child: Container(
                    height: 80,
                      width: 170,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xffFFF9F4),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Womens-2", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),),
                          Text("380 Items", style: TextStyle(color: Colors.grey),)
                        ],
                      ),
                    ),
                  ),
                  Card(
                    child: Container(
                      height: 80,
                      width: 170,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xffFFF9F4),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Women's", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),),
                          Text("340 Items", style: TextStyle(color: Colors.grey),)
                        ],
                      ),
                    ),
                  ),
                  Card(
                    child: Container(
                      height: 80,
                      width: 170,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xffFFF9F4),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Party Abaya", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),),
                          Text("380 Items", style: TextStyle(color: Colors.grey),)
                        ],
                      ),
                    ),
                  ),
                  Card(
                    child: Container(
                      height: 80,
                      width: 170,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xffFFF9F4),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Ambroidery Abaya", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),),
                          Text("140 Items", style: TextStyle(color: Colors.grey),)
                        ],
                      ),
                    ),
                  ),

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
