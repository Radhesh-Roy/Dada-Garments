import 'package:flutter/material.dart';

class ShippingEdit extends StatefulWidget {
  const ShippingEdit({super.key});
  @override
  State<ShippingEdit> createState() => _ShippingEditState();
}
class _ShippingEditState extends State<ShippingEdit> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        title: Text("Edit Shipping Address"),
      ),
    );
  }
}
