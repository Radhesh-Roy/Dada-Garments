import 'dart:developer';

import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:http/http.dart' as http;
class registerController{
Future<bool> resgisterAccount({required Map data})async{
  try{

    Uri uri=Uri.parse("https://b4.coderangon.com/api/register");
    var header={
      "Accept": "application/json"
    };
    var response= await http.post(uri, body: data, headers: header);
log("${response.statusCode}");
log("${data}");
    if(response.statusCode==201){
      EasyLoading.showSuccess("Success");
      log("Success");
return true;
    }
    else if(response.statusCode==422){
      EasyLoading.showError("email or phone already taken");
      log("email or phone already taken");
    }
  }catch(e){
    log("Error: $e");
  }
  return false;
}
}