import 'dart:convert';
import 'dart:developer';
import 'package:http/http.dart' as  http;

class GetSlider{
  Future<List>getSlider()async{
    
    try{
      
      Uri uri=Uri.parse("https://b4.coderangon.com/api/sliders");
      var respose= await http.get(uri);

      if(respose.statusCode==200){
        var data= jsonDecode(respose.body)["data"];
      return data;

      }
      
    }catch(e){
      log("Error: ${e}");
    }
    
    return[];
  }
}
