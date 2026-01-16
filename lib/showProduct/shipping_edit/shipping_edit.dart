import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
class ShippingEdit extends StatefulWidget {
  const ShippingEdit({super.key});
  @override
  State<ShippingEdit> createState() => _ShippingEditState();
}
class _ShippingEditState extends State<ShippingEdit> {
  Map shippingData={};

  final _formKey=GlobalKey<FormState>();

  TextEditingController nameC= TextEditingController();
  TextEditingController phoneC= TextEditingController();

  TextEditingController stateC= TextEditingController();
  TextEditingController upzillaC= TextEditingController();

  TextEditingController ZilaC= TextEditingController();

  getShippingData()async{
    FlutterSecureStorage storage=FlutterSecureStorage();

    var data= await storage.read(key: "shipping");
    if(data!= null){
      shippingData= jsonDecode(data);

      nameC.text=shippingData["name"];
      phoneC.text=shippingData["phone"];
      stateC.text=shippingData["state"];

      upzillaC.text=shippingData["upazila"];
      ZilaC.text=shippingData["zila"];
    }


  }
  @override
  void initState() {
    getShippingData();
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        scrolledUnderElevation: 0,
        backgroundColor: Color(0xffFFFFFF),
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(


            hoverColor: Colors.transparent,
            onTap: (){
              Navigator.pop(context);
            },
            child: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                color: Color(0xffF6F6F6),
                shape: BoxShape.circle,
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset("assets/backImage.png", height: 22, width: 22,),
              ),
            ),
          ),
        ),
        centerTitle: true,
        title: Text("Add Shipping Address"),
      ),
      body: Form(
        key:  _formKey,
        child: SingleChildScrollView(
          padding:  EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              Text(
                "Fill Your Shipping Address.",
                style: TextStyle(color: Colors.grey),
              ),
              SizedBox(height: 25),
              // Name
              Text(
                "Your Name",
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              SizedBox(height: 8),
              TextFormField(
                validator: (value){
                  if(value==null|| value.isEmpty){
                    return "Please Enter Your Name  ";
                  }
                  return null;


                },
                controller: nameC,
                decoration: InputDecoration(
                  hintText: "Enter Your name",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              SizedBox(height: 20),
              // Phone Number
              Text(
                "Phone Number",
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              SizedBox(height: 8),
              TextFormField(
                validator: (value){
                  if(value==null|| value.isEmpty){
                    return "Please Enter Phone Number";
                  }
                  return null;


                },
                controller: phoneC,
                decoration: InputDecoration(
                  hintText: "Enter Your Number",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              SizedBox(height: 10),
              // State
              Text(
                "State",
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              SizedBox(height: 8),
              TextFormField(
                validator: (value){
                  if(value==null|| value.isEmpty){
                    return "Please Enter State";
                  }
                  return null;


                },
                controller: stateC,
                decoration: InputDecoration(
                  hintText: "Enter State",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              SizedBox(height: 10),
              //Upazila
              Text(
                "Enter Upzila",
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              SizedBox(height: 8),
              TextFormField(
                validator: (value){
                  if(value==null|| value.isEmpty){
                    return "Please Enter Upazila";
                  }
                  return null;


                },
                controller: upzillaC,
                decoration: InputDecoration(
                  hintText: "Enter Your Upazila",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              SizedBox(height: 10),
              //Zilla========
              Text(
                "Enter Zila",
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              SizedBox(height: 8),
              TextFormField(
                validator: (value){
                  if(value==null|| value.isEmpty){
                    return "Please Enter Zila";
                  }
                  return null;


                },
                controller: ZilaC,
                decoration: InputDecoration(
                  hintText: "Enter Your Zila",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              SizedBox(height: 10),
              // LOGIN BUTTON
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () async{
                    if(!_formKey.currentState!.validate()){
                      return;
                    }


                    Map data={
                      "name": nameC.text,
                      "phone": phoneC.text,
                      "state":stateC.text,
                      "upazila": upzillaC.text,
                      "zila": ZilaC.text
                    };

FlutterSecureStorage storage=FlutterSecureStorage();
await storage.write(key: "shipping", value: jsonEncode(data));
Navigator.pop(context);

                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    padding:  EdgeInsets.symmetric(vertical: 14),
                  ),
                  child:  Text(
                    "Add Address",
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ),
              ),
              SizedBox(height: 15),
            ],
          ),
        ),
      ),
    );
  }
}
