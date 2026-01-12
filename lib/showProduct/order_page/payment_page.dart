import 'dart:convert';
import 'dart:developer';

import 'package:dadagarments/productDetails.dart';
import 'package:dadagarments/showProduct/shipping_edit/shipping_edit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class PaymentPage extends StatefulWidget {
   PaymentPage({super.key, required this.data, });
  Map<String, dynamic> data;

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  Map shippingAddress={};
  List productList=[];

  getShipping()async{
    FlutterSecureStorage storage=FlutterSecureStorage();
    var data= await storage.read(key: "shipping");
    
    if(data != null){
      shippingAddress= jsonDecode(data);
      log("$shippingAddress");
    }
   setState(() {

   });

  }
  getProduct()async{
    productList= await [widget.data];
  }

  @override
  void initState() {
    getShipping();
    getProduct();
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        scrolledUnderElevation: 0,
        backgroundColor: Color(0xffFFFFFF),
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
            hoverColor: Colors.transparent,
            onTap: (){
              Navigator.pop(context);
            },
            child: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                color: Color(0xffF6F6F6),
                shape: BoxShape.circle,
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset("assets/backImage.png", height: 22, width: 22,),
              ),
            ),
          ),
        ),
        centerTitle: true,
        title: Image.asset("assets/appbarImage.png", height: 40, width: 133,),
      ),
      bottomNavigationBar: InkWell(
        hoverColor: Colors.transparent,
        onTap: (){
          log("payment");
        },
        child: Container(
          height: 60,
          width: double.infinity,
          color: Colors.transparent,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.orange
            ),
            child: Center(
              child: Text("Procced To Pay", style: TextStyle(color: Colors.white70),),
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          spacing: 5,
          children: [
            InkWell(
              hoverColor: Colors.transparent,
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>ShippingEdit())).then((c){getShipping();});
              },
              child: Container(
                padding: EdgeInsets.all(10),
                height: 100,
                width: double.infinity,
                color: Colors.white,
                child: Stack(
                  children: [
                    Column(
                      spacing: 5,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          spacing: 10,
                          children: [
                            Text("${shippingAddress["name"]}", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),),
                            Text("${shippingAddress["phone"]}", style: TextStyle(fontSize: 15, color: Colors.grey),)
                          ],
                        ),
                        Text("Address: ${shippingAddress["state"]}, ${shippingAddress["upazila"]}, ${shippingAddress["zila"]}", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),maxLines: 2, overflow: TextOverflow.ellipsis,),
                      ],
                    ),
                    Positioned(
                        top: 0,
                        right: 0,
                        child: Container(
                          height: 30,
                          width: 120,
                          decoration: BoxDecoration(
                            color: Colors.orange,
                            borderRadius: BorderRadius.circular(10)
                          ),
                          child: Center(child: Text("Shipping Details",style: TextStyle(color: Colors.white),)),
                        ))
                  ],
                )
              ),
            ), //Shipping Details
            Expanded(child: ListView.builder(
              itemCount: productList.length,
              itemBuilder: (context, index) {
                return Container(
                    height: 100,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      spacing: 5,
                      children: [
                        Expanded(
                          flex: 2,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              decoration: BoxDecoration(
                                image: DecorationImage(image: NetworkImage("https://eplay.coderangon.com/storage/${productList[index]["image"]}"),),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 3,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                "${productList[index]["title"]}",
                                style: TextStyle(

                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Text("Size: 40"),
                              Row(
                                spacing: 10,
                                children: [
                                  Text("${productList[index]["price"]}", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),),
                                  Text("${productList[index]["price"]}", style: TextStyle(fontSize: 10, color: Colors.grey, decoration: TextDecoration.lineThrough),)
                                ],
                              )
                            ],
                          ),
                        ),

                      ],
                    ),
                  );
            },)), //Product list
          ],
        )
      ),


    );
  }
}
