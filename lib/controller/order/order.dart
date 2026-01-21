import 'dart:convert';
import 'dart:developer';

import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:http/http.dart' as http;

class OrderConfirm{

  Future<bool>confirmOrder({required Map data})async{
    try{
      Uri uri=Uri.parse("https://eplay.coderangon.com/api/order");
      var body= jsonEncode(data);
      var header= {
        "Accept": "application/json",
        "Content-Type":"application/json"
      };
      var res= await http.post(uri, body: body, headers:header );

      if(res.statusCode==200){
        EasyLoading.showSuccess("Order Submitted");
      }

    }catch(e){
      log("Error: $e");
    }
    return true;
  }
}