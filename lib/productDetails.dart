import 'dart:developer';

import 'package:dadagarments/controller/product-details/product-details.dart';
import 'package:flutter/material.dart';

class ProductdetailsView extends StatefulWidget {
  const ProductdetailsView({super.key, required this.id});

  final int id;

  @override
  State<ProductdetailsView> createState() => _ProductdetailsViewState();
}

class _ProductdetailsViewState extends State<ProductdetailsView> {
  Map productDetailsData={};

  getProductDetails()async{

    productDetailsData=await ProductDetails().getDetails(id: widget.id);
    log("========details: $productDetailsData");
    setState(() {

    });
  }
  @override
  void initState() {
getProductDetails();
    super.initState();
  }

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
          "Product Details",
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
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              Center(
                child: Container(
                  width: 385,
                  height: 400,
                  decoration: BoxDecoration(color: Color(0xffFEF8F2)),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 18.0),
                    child: Column(
                      spacing: 8,
                      children: [
                        Container(
                          width: 225,
                          height: 290,
                         decoration: BoxDecoration(
                           image: DecorationImage(image: NetworkImage("https://eplay.coderangon.com/storage/${productDetailsData["image"]}"))
                         ),
                        ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,

                          children: [
                            Container(
                              width: 70,
                              height: 70,
                              child: Image(
                                image: NetworkImage("https://eplay.coderangon.com/storage/${productDetailsData["image"]}"),
                              ),
                            ),
                            Container(
                              width: 70,
                              height: 70,
                              child: Image(
                                image: NetworkImage("https://eplay.coderangon.com/storage/${productDetailsData["image"]}"),
                              ),
                            ),
                            Container(
                              width: 70,
                              height: 70,
                              child: Image(
                                image: NetworkImage("https://eplay.coderangon.com/storage/${productDetailsData["image"]}"),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 8),
              Row(
                spacing: 8,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "${productDetailsData["title"]}",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 24,
                      color: Color(0xff1E1E1E),
                    ),
                  ),
                  Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.grey,
                    ),
                    child: Icon(Icons.favorite, color: Color(0xffF4A758)),
                  ),
                ],
              ),
              SizedBox(height: 8),
              Text(
                "${productDetailsData["brand"]}",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff797979),
                ),
              ),
              SizedBox(height: 8),
              Padding(
                padding: const EdgeInsets.only(left: 0.0),
                child: Row(
                  spacing: 8,
                  children: [
                    Text(
                      "${productDetailsData["price"]}",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(width: 6),
                    Text(
                      "${productDetailsData["old_price"]}",
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                        decoration: TextDecoration.lineThrough,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15),
              Row(
                children: [
                  Text(
                    "Color: ",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      color: Color(0xff424242),
                    ),
                  ),
                  Text(
                    "Black",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      color: Color(0xff757575),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15),
              Row(
                spacing: 12,
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.blue,
                      border: Border.all(color: Colors.orange, width: 2),
                    ),
                  ),

                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Color(0xffFF0000),
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),

                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Color(0xff800000),
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),

                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Color(0xff1450AA),
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),

                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Color(0xff5D838C),
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                ],
              ),

              SizedBox(height: 15),
              Row(
                children: [
                  Text(
                    "Size: ",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      color: Color(0xff424242),
                    ),
                  ),
                  Text(
                    "38",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      color: Color(0xff757575),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15),

              Row(
                spacing: 12,
                children: [
                  Container(
                    width: 55,
                    height: 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.white,
                    ),
                    child: Center(child: Text("36")),
                  ),

                  Container(
                    width: 55,
                    height: 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.orange,
                    ),
                    child: Center(child: Text("38")),
                  ),

                  Container(
                    width: 55,
                    height: 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.white,
                    ),
                    child: Center(child: Text("40")),
                  ),

                  Container(
                    width: 55,
                    height: 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.white,
                    ),
                    child: Center(child: Text("42")),
                  ),

                  Container(
                    width: 55,
                    height: 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.white,
                    ),
                    child: Center(child: Text("44")),
                  ),
                ],
              ),

              SizedBox(height: 15),

              Row(
                children: [
                  Text(
                    "Stocks: ",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      color: Color(0xff424242),
                    ),
                  ),
                  Text(
                    "${productDetailsData["stock"]}",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      color: Color(0xff757575),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Description",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  ),

                  SizedBox(height: 4),


                  Container(width: 100, height: 2, color: Colors.black12),

                  SizedBox(height: 10),


                  RichText(
                    text: TextSpan(
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black87,
                        height: 1.4,
                      ),
                      children: [
                        TextSpan(
                          text:
                          "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English... ",
                        ),
                        TextSpan(
                          text: "Read More",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    maxLines: 6,
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(height: 10),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(
                          child: Container(
                            padding: EdgeInsets.only(top: 8,right: 20,left: 20,bottom: 8),
                            decoration: BoxDecoration(
                              color: Color(0xffEFEFEF),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            alignment: Alignment.center,
                            child: Text(
                              "Add To Cart",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                color: Color(0xff222222),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8,right: 20,bottom: 8),
                        child: Center(
                          child: Container(
                            padding: EdgeInsets.only(top: 8,right: 20,left: 20,bottom: 8),
                            decoration: BoxDecoration(
                              color: Color(0xffF4A758),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            alignment: Alignment.center,
                            child: Text(
                              "Buy Now",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                color: Color(0xff222222),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  )

                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}