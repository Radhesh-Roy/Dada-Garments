import 'package:flutter/material.dart';

class ViewOrderPage extends StatefulWidget {
  const ViewOrderPage({super.key});

  @override
  State<ViewOrderPage> createState() => _ViewOrderPageState();
}

class _ViewOrderPageState extends State<ViewOrderPage> {
  var status="Delivered";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xffFFFFFF),
        leading:
        Padding(
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
                padding: EdgeInsetsGeometry.symmetric(horizontal: 10),
                child: Image.asset("assets/backImage.png", height: 22, width: 22),
              ),
            ),
          ),
        ),

        centerTitle: true,
        title: Text(
          "My Order",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: Color(0xff1E1E1E),
          ),
        ),
      ),
      body:  Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: SizedBox(
                    height: 45,
                    child: TextField(
                      decoration: InputDecoration(
                        hoverColor: Colors.transparent,
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
            ),//Searchbar
            Expanded(
              child: ListView.builder(
                itemCount: 3,
                itemBuilder: (context, index) => Container(
                  padding: EdgeInsets.all(10),
                  height: 200,
                  width: double.infinity,
                  color: Colors.white,
                  child: Stack(
                    children: [
                      Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: Colors.grey.shade100
                        ),
                        child: Column(
                          spacing: 5,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              spacing: 10,
                              children: [
                                Text("{shippingAddress[""]}", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),),
                                Text("{shippingAddress[""]}", style: TextStyle(fontSize: 15, color: Colors.grey),)
                              ],
                            ),
                            Text("Address: {shippingAddress[""]}, {shippingAddress[""]}, {shippingAddress[""]}", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),maxLines: 2, overflow: TextOverflow.ellipsis,),
                          ],
                        ),
                      ),
                      Positioned(
                          top: 5,
                          right: 5,
                          child: Container(
                            height: 30,
                            width: 120,
                            decoration: BoxDecoration(
                                color: status=="Pending"? Colors.orange: status=="Delivered"? Colors.green: Colors.red,
                                borderRadius: BorderRadius.circular(10)
                            ),
                            child: Center(child: Text("$status",style: TextStyle(color: Colors.white),)),
                          ))
                    ],
                  ),
              ),
              ),
            ),
            SizedBox(height: 10,)
            
          ],
        ),
      ),


    );
  }
}
