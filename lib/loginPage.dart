import 'package:dadagarments/discount.dart';
import 'package:dadagarments/signUp.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import 'controller/authentication/logIn.dart';
import 'homePage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey=GlobalKey<FormState>();
  bool _obscure = true;

  TextEditingController numC=TextEditingController();
  TextEditingController passC=TextEditingController();


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
              child: Image.asset("assets/backImage.png", height: 22, width: 22,),
            ),
          ),
        ),
        centerTitle: true,
        title: Image.asset("assets/appbarImage.png", height: 40, width: 133,),
      ),
      body: Form(
       key:  _formKey,
        child: SingleChildScrollView(
          padding:  EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),


              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
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
                          color: Colors.orange,
                        ),
                      ],
                    ),
                     SizedBox(width: 40),
                    Column(
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
                          color: Colors.orange,
                        ),
                      ],
                    ),
                  ],
                ),
              ),

               SizedBox(height: 30),

               Text(
                "Welcome Back!",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
               SizedBox(height: 6),
               Text(
                "Please enter your details to login.",
                style: TextStyle(color: Colors.grey),
              ),

               SizedBox(height: 25),

              // PHONE NUMBER
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
                controller: numC,
                decoration: InputDecoration(
                  hintText: "Enter your phone number",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),

               SizedBox(height: 20),

              // PASSWORD
               Text(
                "Password",
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
               SizedBox(height: 8),
              TextFormField(
                validator: (value){
                  if(value==null||value.isEmpty){
                    return "Please Enter Your Password";
                  }
                  return null;
                },
                controller: passC,
                obscureText: _obscure,
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

              // FORGOT PASSWORD
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {},
                  child:  Text(
                    "Forgot Password",
                    style: TextStyle(color: Colors.orange),
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
                   var data= await LogInAccount.loginAccount(phone: numC.text, password: passC.text);
                    if(data){

                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Homepage(),));
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    padding:  EdgeInsets.symmetric(vertical: 14),
                  ),
                  child:  Text(
                    "Login",
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ),
              ),

               SizedBox(height: 15),

              // OR DIVIDER
              Row(
                children:  [
                  Expanded(child: Divider()),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Text("Or"),
                  ),
                  Expanded(child: Divider()),
                ],
              ),

               SizedBox(height: 15),

              // GOOGLE SIGN-IN
              Container(
                width: double.infinity,
                padding:  EdgeInsets.symmetric(vertical: 13),
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
                padding:  EdgeInsets.symmetric(vertical: 13),
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
                   Text("Already have no account? "),
                  InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpPage()));

                    },
                    child:  Text(
                      "Register here",
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
