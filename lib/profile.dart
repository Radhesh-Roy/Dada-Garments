import 'dart:developer';

import 'package:dadagarments/discount.dart';
import 'package:dadagarments/showProduct/order_page/view-order.dart';
import 'package:flutter/material.dart';

class ProfilescreenView extends StatefulWidget {
  const ProfilescreenView({super.key});

  @override
  State<ProfilescreenView> createState() => _ProfilescreenViewState();
}

class _ProfilescreenViewState extends State<ProfilescreenView> {
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
          "Profile",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: Color(0xff1E1E1E),
          ),
        ),
      ),
      body: SingleChildScrollView(
       scrollDirection: Axis.vertical,
        child: Column(
          spacing: 8,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 25,),
            Center(
              child: Container(
                width: 110,
                height: 110,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),

                ),
                child: Image(image: AssetImage("assets/Profile.png"),
                  fit: BoxFit.cover,

                ),
              ),
            ),
            Center(child: Text("Radhesh Roy",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 19,color: Color(0xff222222)),)),
            SizedBox(height: 25,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Container(
                  width: double.infinity,
                  height: 350,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    spacing: 4,
                    children: [
                      SizedBox(height: 10,),
                      Container(
                        width: double.infinity,
                        height: 50,
                        decoration: BoxDecoration(
                            color: Color(0xffFEFAF6)
                        ),
                        child: Row(
                          spacing: 20,
                          children: [
                            Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Container(
                                  width: 30,
                                  height: 30,
                                  child: Image.asset(
                                    "assets/myprofile.png",
                                    fit: BoxFit.cover,
                                  ),
                                )

                            ),
                            Text("My Profile"),
                            Spacer(),
                            Icon(Icons.arrow_forward_ios)
                          ],
                        ),
                      ),// My Profile
                      SizedBox(height: 5,),
                      InkWell(
                        hoverColor: Colors.transparent,
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => ViewOrderPage(),));

                        },

                        child: Container(
                          width: double.infinity,
                          height: 50,
                          decoration: BoxDecoration(
                              color: Color(0xffFEFAF6)
                          ),
                          child: Row(
                            spacing: 20,
                            children: [
                              Padding(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: Container(
                                    width: 22,
                                    height: 22,
                                    child: Image.asset(
                                      "assets/order.png",
                                      fit: BoxFit.cover,
                                    ),
                                  )

                              ),
                              Text("My Order"),
                              Spacer(),
                              Icon(Icons.arrow_forward_ios)
                            ],
                          ),
                        ),
                      ),// My Order

                      SizedBox(height: 5,),
                      Container(
                        width: double.infinity,
                        height: 50,
                        decoration: BoxDecoration(
                            color: Color(0xffFEFAF6)
                        ),
                        child: Row(
                          spacing: 20,
                          children: [
                            Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Container(
                                  width: 22,
                                  height: 22,
                                  child: Image.asset(
                                    "assets/offerorder.png",
                                    fit: BoxFit.cover,
                                  ),
                                )

                            ),
                            Text("Offer Order"),
                            Spacer(),
                            Icon(Icons.arrow_forward_ios)
                          ],
                        ),
                      ),//Offer Order

                      SizedBox(height: 5,),
                      Container(
                        width: double.infinity,
                        height: 50,
                        decoration: BoxDecoration(
                            color: Color(0xffFEFAF6)
                        ),
                        child: Row(
                          spacing: 20,
                          children: [
                            Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Container(
                                  width: 28,
                                  height: 28,
                                  child: Image.asset(
                                    "assets/review.png",
                                    fit: BoxFit.cover,
                                  ),
                                )

                            ),
                            Text("My Review"),
                            Spacer(),
                            Icon(Icons.arrow_forward_ios)
                          ],
                        ),
                      ),//My Review

                      SizedBox(height: 5,),
                      Container(
                        width: double.infinity,
                        height: 50,
                        decoration: BoxDecoration(
                            color: Color(0xffFEFAF6)
                        ),
                        child: Row(
                          spacing: 20,
                          children: [
                            Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Container(
                                  width: 28,
                                  height: 28,
                                  child: Image.asset(
                                    "assets/logout.png",
                                    fit: BoxFit.cover,
                                  ),
                                )

                            ),
                            Text("Logout"),


                          ],
                        ),
                      ),//Logout
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}