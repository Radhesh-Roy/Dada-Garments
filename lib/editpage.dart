import 'package:flutter/material.dart';

class EditprofilescreenView extends StatefulWidget {
  const EditprofilescreenView({super.key});

  @override
  State<EditprofilescreenView> createState() => _EditprofilescreenViewState();
}

class _EditprofilescreenViewState extends State<EditprofilescreenView> {
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
              padding: EdgeInsetsGeometry.symmetric(horizontal: 10),
              child: Image.asset("assets/backImage.png", height: 22, width: 22),
            ),
          ),
        ),
        centerTitle: true,
        title: Text(
          "Edit Profile",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: Color(0xff1E1E1E),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 15),
              Text(
                "Profile Information",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Color(0xff5F5F5F),
                ),
              ),
              SizedBox(height: 15),
              Text(
                "Name",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  color: Color(0xff242424),
                ),
              ),
              SizedBox(height: 15),
              TextField(
                decoration: InputDecoration(
                  labelText: "Enter your Name",
                  labelStyle: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Color(0xffC7C7C7),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              SizedBox(height: 15),
              Text(
                "Phone Number",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  color: Color(0xff242424),
                ),
              ),
              SizedBox(height: 15),
              TextField(
                decoration: InputDecoration(
                  suffixIcon: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0, right: 4),
                        child: Image(image: AssetImage("assets/flag.png")),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0, right: 4),
                        child: Image(
                          image: AssetImage("assets/down.png"),
                        ),
                      ),

                      Text(
                        "Your Phone Number",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Color(0xffC7C7C7),
                        ),
                      ),
                    ],
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),

              SizedBox(height: 15),
              Text(
                "Division",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  color: Color(0xff242424),
                ),
              ),
              SizedBox(height: 15),
              TextField(
                decoration: InputDecoration(
                  suffixIcon: Image(
                    image: AssetImage("assets/down.png"),
                  ),
                  labelText: "Select",
                  labelStyle: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Color(0xffC7C7C7),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),


              SizedBox(height: 15),
              Text(
                "District",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  color: Color(0xff242424),
                ),
              ),
              SizedBox(height: 15),
              TextField(
                decoration: InputDecoration(
                  suffixIcon: Image(
                    image: AssetImage("assets/down.png"),
                  ),
                  labelText: "Select",
                  labelStyle: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Color(0xffC7C7C7),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),


              SizedBox(height: 15),
              Text(
                "Address",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  color: Color(0xff242424),
                ),
              ),
              SizedBox(height: 15),
              Container(
                width: 400,
                height: 110,
                padding: EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.grey),
                ),
                child: TextField(
                  maxLines: null,
                  expands: true,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Uttara",
                  ),
                ),
              ),
              SizedBox(height: 25),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Color(0xffF4A758),
                      borderRadius: BorderRadius.circular(10), // radius 10
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      "Save Changes",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff222222),
                      ),
                    ),
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}