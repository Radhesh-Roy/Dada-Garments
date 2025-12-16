import 'dart:developer';

import 'package:dadagarments/controller/authentication/register.dart';
import 'package:flutter/material.dart';

import 'loginPage.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final _formKey = GlobalKey<FormState>();
  int click = 1;
  int clk = 2;

  bool _obscure = true;

  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController addressController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xffFFFFFF),
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              color: Color(0xffF6F6F6),
              shape: BoxShape.circle,
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset("assets/backImage.png", height: 22, width: 22),
            ),
          ),
        ),
        centerTitle: true,
        title: Image.asset("assets/appbarImage.png", height: 40, width: 133),
      ),
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),

              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Column(
                        children: [
                          Text(
                            "Sign In",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(height: 6),
                          Container(
                            height: 3,
                            width: 179,
                            color: click == 1 ? Colors.orange : Colors.grey,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 40),
                    InkWell(
                      onTap: () {},
                      child: Column(
                        children: [
                          Text(
                            "Sign Up",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(height: 6),
                          Container(
                            height: 3,
                            width: 179,
                            color: clk == 2 ? Colors.grey : Colors.orange,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 30),

              Text(
                "Lets Gets Started!",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 6),
              Text("Create an Account", style: TextStyle(color: Colors.grey)),
              SizedBox(height: 25),
// name field start
              Text("Name", style: TextStyle(fontWeight: FontWeight.w500)),
              SizedBox(height: 8),
              TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please Enter Your Name";
                  }
                  return null;
                },
                controller: nameController,
                decoration: InputDecoration(
                  hintText: "Enter your Name",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ), // Name Form
              SizedBox(height: 25),
              // name field end
              // Email field start

              Text("Email", style: TextStyle(fontWeight: FontWeight.w500)),
              SizedBox(height: 8),
              TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please Enter Your Email";
                  }
                  return null;
                },
                controller: emailController,
                decoration: InputDecoration(
                  hintText: "Enter your Email",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ), // Email Form
              SizedBox(height: 25),
              // Number field start


              Text(
                "Phone Number",
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              SizedBox(height: 8),
              TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please Enter Phone Number";
                  }
                  return null;
                },
                controller: phoneController,
                decoration: InputDecoration(
                  hintText: "Enter your phone number",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ), // Number Form
              SizedBox(height: 20),
              // Address field start

              Text("Address", style: TextStyle(fontWeight: FontWeight.w500)),
              SizedBox(height: 8),
              TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please Enter Your Address";
                  }
                  return null;
                },
                controller: addressController,
                decoration: InputDecoration(
                  hintText: "Enter your Addres",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ), // Email Form
              SizedBox(height: 25),

              // Password field start

              Text("Password", style: TextStyle(fontWeight: FontWeight.w500)),
              SizedBox(height: 8),
              TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please Enter Password";
                  }
                  return null;
                },
                obscureText: _obscure,
                controller: passController,
                decoration: InputDecoration(
                  hintText: "************",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  suffixIcon: IconButton(
                    icon: Icon(
                      _obscure ? Icons.visibility_off : Icons.visibility,
                      color: Colors.grey,
                    ),
                    onPressed: () {
                      setState(() {
                        _obscure = !_obscure;
                      });
                    },
                  ),
                ),
              ),
              SizedBox(height: 10),

              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Forgot Password",
                    style: TextStyle(color: Colors.orange),
                  ),
                ),
              ),

              const SizedBox(height: 10),

              // LOGIN BUTTON
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: ()async{
                    if (!_formKey.currentState!.validate()) {

                      return;
                    }
                    var data={
                      "name": nameController.text,
                      "email": emailController.text,
                      "phone": phoneController.text,
                      "address": addressController.text,
                      "password": passController.text
                    };

                    log("$data");
                    bool success=await registerController().resgisterAccount(data: data);
                    if(success){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage(),));
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    padding: const EdgeInsets.symmetric(vertical: 14),
                  ),
                  child: const Text(
                    "Register",
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ),
              ),

              SizedBox(height: 15),

              // OR DIVIDER
              Row(
                children: [
                  Expanded(child: Divider()),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Text("Or"),
                  ),
                  Expanded(child: Divider()),
                ],
              ),

              SizedBox(height: 15),

              Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(vertical: 13),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.grey.shade400),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("assets/google.png", height: 18),
                    SizedBox(width: 10),
                    Text("Sign in with google"),
                  ],
                ),
              ),

              SizedBox(height: 12),

              Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(vertical: 13),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.grey.shade400),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("assets/facebook.png", height: 18),
                    SizedBox(width: 10),
                    Text("Sign in with facebook"),
                  ],
                ),
              ),

              SizedBox(height: 20),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Already have an account? "),
                  InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage(),));
                    },
                    child: Text(
                      "Log In",
                      style: TextStyle(
                        color: Colors.orange,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
