import 'dart:convert';
import 'dart:developer';

import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:http/http.dart' as http;
class GetProduct{
  Future<List>getProductData({required String title})async{
try{
  Uri uri;
  if(title=="top selling"){
    uri=Uri.parse("https://eplay.coderangon.com/api/products");
    var res= await http.get(uri);
    log("========${res.body}");
  }
  else if(title=="latest"){
    uri=Uri.parse("https://eplay.coderangon.com/api/products/latests");
  }
  else{
    uri=Uri.parse("https://eplay.coderangon.com/api/products/category/$title");
  }
  var res= await http.get(uri);

  if(res.statusCode==200){
    return jsonDecode(res.body)["data"];
  }
  else{
    EasyLoading.showError("Data Not Found");
  }


}catch(e){
  log("Error: $e");
}
    return [];

  }

}