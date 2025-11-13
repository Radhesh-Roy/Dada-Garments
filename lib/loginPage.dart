import 'package:flutter/material.dart';
class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
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
              padding: const EdgeInsets.all(8.0),
              child: Image.asset("assets/backImage.png", height: 22, width: 22,),
            ),
          ),
        ),
        centerTitle: true,
        title: Image.asset("assets/appbarImage.png", height: 40, width: 133,),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Center(
                    child: Column(
                      children: [
                        Container(
                          height: 21,
                          width: 51,
                          child: Text("Sign In", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),),
                        ),
                        Container(
                          height: 3,
                          width: 179,
                          color: Colors.red,
                        )
                      ],
                    ),

                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Center(
                    child: Column(
                      children: [
                        Container(
                          height: 21,
                          width: 51,
                          child: Text("Sign In", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),),
                        ),
                        Container(
                          height: 3,
                          width: 179,
                          color: Colors.red,
                        )
                      ],
                    ),

                  ),
                ),
              ],
            )
          ],
        ),
      )
    );
  }
}
