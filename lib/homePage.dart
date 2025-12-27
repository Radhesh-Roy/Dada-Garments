import 'dart:developer';

import 'package:dadagarments/controller/home/homecontroller.dart';
import 'package:dadagarments/controller/product/product_controller.dart';
import 'package:dadagarments/controller/slider/sliderApi.dart';
import 'package:dadagarments/showProduct/category_product/product_show.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key, required this.title});
  final String title;

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  List data = [];
  List categoryList = [];
  List categoryProduct = [];
  List latestProduct = [];
  List bestSellProduct = [];
  getByData() async {
    data = await GetSlider().getSlider();
    setState(() {});
  }
  getCategory() async {
    categoryList = await HomeController().getHomeData();
    setState(() {
    });
  }
getCategoryProduct()async{
    categoryProduct=await GetProduct().getProductData(title: widget.title);
    setState(() {
    });
}
  @override
  void initState() {
    getByData();
    getCategory();
    getCategoryProduct();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xffFFFFFF),
        leading: Image.asset(
          "assets/menu.png",
          height: 35,
          width: 35,
          color: Color(0xff222222),
        ),
        centerTitle: true,
        title: Image.asset("assets/appbarImage.png", height: 40, width: 133),
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Image.asset("assets/mens.png", height: 25, width: 25),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Container(
          child: ListView(
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
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
              SizedBox(height: 15),
              CarouselSlider(
                options: CarouselOptions(
                  height: 180.0,
                  viewportFraction: 1,
                  autoPlay: true,
                ),
                items: data.map((i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.symmetric(horizontal: 8.0),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(
                              "https://b4.coderangon.com/storage/${i["image"]}",
                            ),
                          ),
                        ),
                      );
                    },
                  );
                }).toList(),
              ),
              SizedBox(height: 15),
              Text(
                "Categories",
                style: TextStyle(
                  color: Color(0xff5F5F5F),
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 15),
              SizedBox(
                height: 100,

                width: MediaQuery.sizeOf(context).width,
                child: ListView.builder(

                  itemCount: categoryList.length,
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => ProductShowPage(),));
                        
                      },
                      
                      child: Container(
                        margin: EdgeInsets.all(5),
                        height: 109,
                        width: 90,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            image: NetworkImage(
                              "https://b4.coderangon.com/storage/${categoryList[index]["image"]}",
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Center(
                          child: Container(
                            height: 18,
                            width: 90,
                            decoration: BoxDecoration(color: Colors.black54),
                            child: Center(
                              child: Text(
                                "${categoryList[index]["name"]}",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ), //Categories
              SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Best Selling",
                    style: TextStyle(
                      color: Color(0xff5F5F5F),
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    "See All",
                    style: TextStyle(
                      color: Color(0xffFF8900),
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15),
              SizedBox(
                height: 268,
                width: MediaQuery.sizeOf(context).width,
                child: ListView.builder(
                  itemCount: categoryProduct.length,
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return Card(
                      child: Container(
                        height: 261,
                        width: 180,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          spacing: 2,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.network(
                              "https://b4.coderangon.com/storage/${categoryProduct[index]["image"]}",
                              width: 179,
                              height: 156,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "${categoryProduct[index]["title"]}",
                                style: TextStyle(
                                  color: Color(0xff1E1E1E),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsGeometry.symmetric(
                                horizontal: 10,
                              ),
                              child: Row(
                                spacing: 5,
                                children: [
                                  Text(
                                    "${categoryProduct[index]["price"]}",
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  Text(
                                    "${categoryProduct[index]["old_price"]}",
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      decoration: TextDecoration.lineThrough,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Center(
                              child: InkWell(
                                onTap: () {},
                                child: Container(
                                  height: 30,
                                  width: 88,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.grey,
                                      width: 1,
                                    ),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: Center(child: Text("Add To Card")),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ), //Best Selling
              SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "New Arrival",
                    style: TextStyle(
                      color: Color(0xff5F5F5F),
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    "See All",
                    style: TextStyle(
                      color: Color(0xffFF8900),
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 268,
                width: MediaQuery.sizeOf(context).width,
                child: ListView.builder(
                  itemCount: 10,
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,

                  itemBuilder: (context, index) {
                    return Card(
                      child: Container(
                        height: 261,
                        width: 180,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          spacing: 2,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              "assets/card1.png",
                              width: 179,
                              height: 156,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Party Borkha Abaya Koliza",
                                style: TextStyle(
                                  color: Color(0xff1E1E1E),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsGeometry.symmetric(
                                horizontal: 10,
                              ),
                              child: Row(
                                spacing: 5,
                                children: [
                                  Text(
                                    "2800",
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  Text(
                                    "3200",
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      decoration: TextDecoration.lineThrough,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Center(
                              child: InkWell(
                                onTap: () {},
                                child: Container(
                                  height: 30,
                                  width: 88,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.grey,
                                      width: 1,
                                    ),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: Center(child: Text("Add To Card")),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ), //New Arrival
              SizedBox(height: 15),
              Container(
                height: 442,
                width: 358,
                decoration: BoxDecoration(
                  color: Color(0xffEDB77B1A).withOpacity(.10),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Column(
                  spacing: 10,
                  children: [
                    Container(
                      height: 134,
                      width: 358,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/card3.png"),
                        ),
                      ),
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,

                          children: [
                            Text(
                              "Party Abaya",
                              style: TextStyle(color: Colors.white),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: InkWell(
                                onTap: () {},
                                child: Container(
                                  height: 20,
                                  width: 58,
                                  decoration: BoxDecoration(
                                    color: Color(0xffEDB77BB0).withOpacity(.69),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: Center(
                                    child: Text(
                                      "View All",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsGeometry.symmetric(horizontal: 3),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            Card(
                              child: Container(
                                height: 261,
                                width: 180,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Column(
                                  spacing: 2,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image.asset(
                                      "assets/card1.png",
                                      width: 179,
                                      height: 156,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        "Party Borkha Abaya Koliza",
                                        style: TextStyle(
                                          color: Color(0xff1E1E1E),
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsGeometry.symmetric(
                                        horizontal: 10,
                                      ),
                                      child: Row(
                                        spacing: 5,
                                        children: [
                                          Text(
                                            "2800",
                                            style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                          Text(
                                            "3200",
                                            style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 14,
                                              fontWeight: FontWeight.w500,
                                              decoration:
                                                  TextDecoration.lineThrough,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Center(
                                      child: InkWell(
                                        onTap: () {},
                                        child: Container(
                                          height: 30,
                                          width: 88,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              color: Colors.grey,
                                              width: 1,
                                            ),
                                            borderRadius: BorderRadius.circular(
                                              5,
                                            ),
                                          ),
                                          child: Center(
                                            child: Text("Add To Card"),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Card(
                              child: Container(
                                height: 261,
                                width: 180,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Column(
                                  spacing: 2,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image.asset(
                                      "assets/card2.png",
                                      width: 179,
                                      height: 156,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        "Party Borkha Abaya Koliza",
                                        style: TextStyle(
                                          color: Color(0xff1E1E1E),
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsGeometry.symmetric(
                                        horizontal: 10,
                                      ),
                                      child: Row(
                                        spacing: 5,
                                        children: [
                                          Text(
                                            "2800",
                                            style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                          Text(
                                            "3200",
                                            style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 14,
                                              fontWeight: FontWeight.w500,
                                              decoration:
                                                  TextDecoration.lineThrough,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Center(
                                      child: InkWell(
                                        onTap: () {},
                                        child: Container(
                                          height: 30,
                                          width: 88,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              color: Colors.grey,
                                              width: 1,
                                            ),
                                            borderRadius: BorderRadius.circular(
                                              5,
                                            ),
                                          ),
                                          child: Center(
                                            child: Text("Add To Card"),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15),
              Container(
                height: 442,
                width: 358,
                decoration: BoxDecoration(
                  color: Color(0xffEDB77B1A).withOpacity(.10),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Column(
                  spacing: 10,
                  children: [
                    Container(
                      height: 134,
                      width: 358,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/slider.png"),
                        ),
                      ),
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,

                          children: [
                            Text(
                              "Ambroidery Abaya",
                              style: TextStyle(color: Colors.white),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: InkWell(
                                onTap: () {},
                                child: Container(
                                  height: 20,
                                  width: 58,
                                  decoration: BoxDecoration(
                                    color: Color(0xffEDB77BB0).withOpacity(.69),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: Center(
                                    child: Text(
                                      "View All",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsGeometry.symmetric(horizontal: 3),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            Card(
                              child: Container(
                                height: 261,
                                width: 180,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Column(
                                  spacing: 2,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image.asset(
                                      "assets/card1.png",
                                      width: 179,
                                      height: 156,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        "Party Borkha Abaya Koliza",
                                        style: TextStyle(
                                          color: Color(0xff1E1E1E),
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsGeometry.symmetric(
                                        horizontal: 10,
                                      ),
                                      child: Row(
                                        spacing: 5,
                                        children: [
                                          Text(
                                            "2800",
                                            style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                          Text(
                                            "3200",
                                            style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 14,
                                              fontWeight: FontWeight.w500,
                                              decoration:
                                                  TextDecoration.lineThrough,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Center(
                                      child: InkWell(
                                        onTap: () {},
                                        child: Container(
                                          height: 30,
                                          width: 88,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              color: Colors.grey,
                                              width: 1,
                                            ),
                                            borderRadius: BorderRadius.circular(
                                              5,
                                            ),
                                          ),
                                          child: Center(
                                            child: Text("Add To Card"),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Card(
                              child: Container(
                                height: 261,
                                width: 180,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Column(
                                  spacing: 2,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image.asset(
                                      "assets/card2.png",
                                      width: 179,
                                      height: 156,
                                      fit: BoxFit.cover,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        "Party Borkha Abaya Koliza",
                                        style: TextStyle(
                                          color: Color(0xff1E1E1E),
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsGeometry.symmetric(
                                        horizontal: 10,
                                      ),
                                      child: Row(
                                        spacing: 5,
                                        children: [
                                          Text(
                                            "2800",
                                            style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                          Text(
                                            "3200",
                                            style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 14,
                                              fontWeight: FontWeight.w500,
                                              decoration:
                                                  TextDecoration.lineThrough,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Center(
                                      child: InkWell(
                                        onTap: () {},
                                        child: Container(
                                          height: 30,
                                          width: 88,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              color: Colors.grey,
                                              width: 1,
                                            ),
                                            borderRadius: BorderRadius.circular(
                                              5,
                                            ),
                                          ),
                                          child: Center(
                                            child: Text("Add To Card"),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
