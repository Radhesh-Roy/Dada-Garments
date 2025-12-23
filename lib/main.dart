
import 'package:dadagarments/productDetails.dart';
import 'package:dadagarments/profile.dart';
import 'package:dadagarments/signUp.dart';
import 'package:dadagarments/splashScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

import 'bottomnavigation.dart';
import 'cart.dart';
import 'category.dart';
import 'discount.dart';
import 'editpage.dart';
import 'homePage.dart';
import 'loginPage.dart';
void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    builder: EasyLoading.init(),
    home: Homepage(),
  ));
}