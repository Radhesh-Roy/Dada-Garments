import 'dart:convert';
import 'dart:developer';

import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:http/http.dart' as http;
class DiscountPruduct{
  Future<List> getDiscountProduct()async{
    try{
      Uri uri=Uri.parse("https://b4.coderangon.com/api/products");
      var response= await http.get(uri);

      if(response.statusCode==200){
        var res= jsonDecode(response.body);
        return res["data"];
      }
      else{
        EasyLoading.showError("No Data Found");
      }
    }catch(e){
      log("Error: $e");
    }
    return[];
    
  }
}