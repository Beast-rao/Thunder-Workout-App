import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../theme/colors.dart';
import '../../theme/layout.dart';
class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: bFColor,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [backgroundgradient(), title()],
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    vertical: AppLayout.getHeight(20),
                    horizontal: AppLayout.getHeight(15)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    loginform(),
                    SizedBox(
                      height: AppLayout.getHeight(15),
                    ),
                    buttons()
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Column buttons() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(height: AppLayout.getHeight(20),),
        TextButton(
            onPressed: () {},
            child: Container(
              height: 50,
              width: Get.width * 0.7,
              decoration: BoxDecoration(
                  color: bTColor, borderRadius: BorderRadius.circular(5)),
              child: Center(
                  child: Text(
                    "Submit",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  )),
            )),
        SizedBox(
          height: AppLayout.getHeight(15),
        ),
        TextButton(
            onPressed: ()=>Get.back(),
            child: Container(
              height: 50,
              width: Get.width * 0.7,
              decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(width: 1, color: bTColor)),
              child: Center(
                  child: Text(
                    "CANCEL",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  )),
            )),
      ],
    );
  }

  Container title() {
    return Container(
      height: Get.height * 0.55,
      width: double.maxFinite,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              colors: [
                bFColor,
                Colors.transparent,
              ])),
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: AppLayout.getHeight(25),
            vertical: AppLayout.getHeight(15)),
        child: Column(
          children: [
            SizedBox(
              height: AppLayout.getHeight(20),
            ),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "CREATE\t",
                    style: TextStyle(
                        fontFamily: 'Bebas',
                        fontSize: AppLayout.getHeight(30),
                        letterSpacing: 5,
                        color: Colors.white),
                  ),
                  TextSpan(
                      text: "YOURSELF",
                      style: TextStyle(
                          fontFamily: 'Bebas',
                          fontSize: AppLayout.getHeight(30),
                          letterSpacing: 5,
                          color: bTColor))
                ],
              ),
            ),
            Spacer(),
            Align(
              alignment: Alignment.centerLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Forget Password',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: AppLayout.getHeight(40),
                        // fontWeight: FontWeight.bold,
                        fontFamily: 'Bebas'),
                  ),
                  SizedBox(
                    height: AppLayout.getHeight(7),
                  ),
                  Text(
                    "The only bad workout is the one that didn't happen, So start here anywhere! ",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container backgroundgradient() {
    return Container(
      height: Get.height * 0.55,
      width: double.maxFinite,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/4.jpg'), fit: BoxFit.cover)),
    );
  }

  Column loginform() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Email",
          style: TextStyle(color: tFColor, fontSize: 18),
        ),
        TextFormField(
          decoration: InputDecoration(
              enabledBorder:
              UnderlineInputBorder(borderSide: BorderSide(color: tFColor)),
              focusedBorder:
              UnderlineInputBorder(borderSide: BorderSide(color: tFColor)),
              hintText: "faheemrao449@gmail.com",
              hoverColor: CupertinoColors.activeGreen),
        ),

      ],
    );
  }


}
