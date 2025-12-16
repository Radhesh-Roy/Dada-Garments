
import 'dart:convert';
import 'dart:developer';

import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:http/http.dart' as http;

class LogInAccount{
  static Future<void>loginAccount({required String phone, required String password})async{
    try{
      Uri uri=Uri.parse("https://b4.coderangon.com/api/login");
      var body={
        "phone": phone,
        "password": password,
      };
      var header={
        "Accept": "application/json"
      };
      var response= await http.post(uri, body: body, headers: header);
      log("${response.body}");
      if(response.statusCode==200){

        
        var data=jsonDecode(response.body)["token"];
        log("${data}");
         FlutterSecureStorage _storage= FlutterSecureStorage();
         _storage.write(key: "token", value: data);
         EasyLoading.showSuccess("Log In Success");
      }
      else if(response.statusCode==422){
        EasyLoading.showError("Wrong Phone Number and Password");
      }
      
    }catch(e){

      log("Error: $e");
    }
  }

}
