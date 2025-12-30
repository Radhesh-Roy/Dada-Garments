import 'package:flutter/material.dart';

class PaymentPage extends StatelessWidget {
  const PaymentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
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
      bottomNavigationBar: Container(
        height: 60,
        width: double.infinity,
        child: Container(),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          spacing: 5,
          children: [
            Container(
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
                          Text("Radhesh Roy", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),),
                          Text("01789391948", style: TextStyle(fontSize: 15, color: Colors.grey),)
                        ],
                      ),
                      Text("Address: Manikdi Bazar, Matikata, Dhaka", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),maxLines: 2, overflow: TextOverflow.ellipsis,),
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
            ), //Shipping Details
            Expanded(child: ListView.builder(
              itemCount: 5,
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
                                image: DecorationImage(image: AssetImage("assets/card1.png"),),
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

                      ],
                    ),
                  );



            },))
          ],
        )
      ),


    );
  }
}
