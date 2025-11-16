import 'package:flutter/material.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xffFFFFFF),
        leading: Padding(
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
          "Cart",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: Color(0xff1E1E1E),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          spacing: 10,
          children: [
            Card(
              elevation: 3,
              child: Container(
                height: 100,
                width: 358,
                decoration: BoxDecoration(
                  color: Color(0xffFFF9F4),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  spacing: 5,
                  children: [
                    Expanded(
                      flex: 2,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset("assets/card1.png"),
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            "Party Borkha Abaya Koliza",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text("Size: 40"),
                          Row(
                            spacing: 10,
                            children: [
                              Text("BDT 2880", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),),
                              Text("BDT 3200", style: TextStyle(fontSize: 10, color: Colors.grey, decoration: TextDecoration.lineThrough),)
                            ],
                          )
                        ],
                      ),
                    ),
                    Expanded(flex: 1, child: Padding(
                      padding: EdgeInsetsGeometry.symmetric(horizontal: 10),
                      child: Container(
                        height: 92,
                        width: 30,
                        decoration: BoxDecoration(
                          color: Color(0xffEDB77B3D).withOpacity(.24),
                          borderRadius: BorderRadius.circular(25)
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                color: Color(0xffF4A758),
                                borderRadius: BorderRadius.circular(100)
                              ),
                              child: Center(child: Text("+",style: TextStyle(fontSize: 25),)),

                            ),
                            Text("2"),
                            Container(
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                  color: Color(0xffF4A758),
                                  borderRadius: BorderRadius.circular(100)
                              ),
                              child: Center(child: Text("-",style: TextStyle(fontSize: 25),)),

                            )
                          ],
                        ),

                      ),
                    )),
                  ],
                ),
              ),
            ),
            Card(
              elevation: 3,
              child: Container(
                height: 100,
                width: 358,
                decoration: BoxDecoration(
                  color: Color(0xffFFF9F4),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  spacing: 5,
                  children: [
                    Expanded(
                      flex: 2,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset("assets/card2.png"),
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            "Party Borkha Abaya Koliza",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text("Size: 40"),
                          Row(
                            spacing: 10,
                            children: [
                              Text("BDT 2880", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),),
                              Text("BDT 3200", style: TextStyle(fontSize: 10, color: Colors.grey, decoration: TextDecoration.lineThrough),)
                            ],
                          )
                        ],
                      ),
                    ),
                    Expanded(flex: 1, child: Padding(
                      padding: EdgeInsetsGeometry.symmetric(horizontal: 10),
                      child: Container(
                        height: 92,
                        width: 30,
                        decoration: BoxDecoration(
                            color: Color(0xffEDB77B3D).withOpacity(.24),
                            borderRadius: BorderRadius.circular(25)
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                  color: Color(0xffF4A758),
                                  borderRadius: BorderRadius.circular(100)
                              ),
                              child: Center(child: Text("+",style: TextStyle(fontSize: 25),)),

                            ),
                            Text("1"),
                            Container(
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                  color: Color(0xffF4A758),
                                  borderRadius: BorderRadius.circular(100)
                              ),
                              child: Center(child: Text("-",style: TextStyle(fontSize: 25),)),

                            )
                          ],
                        ),

                      ),
                    )),
                  ],
                ),
              ),
            ),
            Container(
              height: 241,
              width: 358,
              decoration: BoxDecoration(
                color: Color("0xffF8F8F8",),
                borderRadius: BorderRadius.circular(5)
              ),
            ),
          ],
        ),
      ),
    );
  }
}
