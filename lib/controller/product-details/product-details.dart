
import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart' as http;

class ProductDetails{
  
  Future<Map>getDetails({required int id})async{
    try{
      Uri uri=Uri.parse("https://eplay.coderangon.com/api/products/$id");
      var res= await http.get(uri);

      if(res.statusCode==200){
        log("${jsonDecode(res.body)["data"]}");

        return jsonDecode(res.body)["data"];
      }
    }catch(e){
      
      log("Details Controller Error: $e");
    }
    return {};
  }
}