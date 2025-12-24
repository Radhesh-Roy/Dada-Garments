import 'package:dadagarments/discount.dart';
import 'package:dadagarments/homePage.dart';
import 'package:dadagarments/loginPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
 autoNavigate() async{
   FlutterSecureStorage secure=FlutterSecureStorage();
   var t= await secure.read(key: "token");
   if(t==null){
     Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage(),));
   }
   else{
     Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Homepage(title: '',),));
   }
 }
 @override
  void initState() {
autoNavigate();
super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Image.asset("assets/Splash-Screen.png", height: 283, width: 283),
      ),
    );
  }
}
