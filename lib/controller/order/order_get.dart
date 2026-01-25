import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart'as http;

class OrderGet{
  Future<List> orderGetByNumber({required String phone})async{
    try{
      Uri uri=Uri.parse("https://eplay.coderangon.com/api/orders/01789391948");
      var res= await http.get(uri);
      if(res.statusCode==200){
        log("My product= ${jsonDecode(res.body)["data"]}");
      }
    }catch(e){
      log("Error: $e");
    }
    return[];
  }
  
}