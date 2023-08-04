import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:thunder_workout_app/all/core.dart';
import 'package:thunder_workout_app/theme/layout.dart';

import '../../theme/colors.dart';
import '../../utils/controler.dart';

class LogInScreen extends StatefulWidget {
  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController _nameController = TextEditingController();


  void moveToHome() async {
    if (_formKey.currentState != null && _formKey.currentState!.validate()) {
      Get.find<NameController>().setName(_nameController.text);
      Get.offAll(() => WorkoutScreen(name: _nameController.text));
      await Future.delayed(Duration(seconds: 2));
    }
  }

  @override
  Widget build(BuildContext context) {
    // final NameController nameController = Get.find();
    return SafeArea(
      child: Scaffold(
        backgroundColor: bFColor,
        body: SingleChildScrollView(
          child: Form(
            key: _formKey,
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
      ),
    );
  }

  Column buttons() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        TextButton(
            onPressed: ()=>moveToHome(),
            child: Container(
              height: 50,
              width: Get.width * 0.7,
              decoration: BoxDecoration(
                  color: bTColor, borderRadius: BorderRadius.circular(5)),
              child: Center(
                  child: Text(
                "Login",
                style: TextStyle(color: Colors.white, fontSize: 20),
              )),
            )),
        SizedBox(
          height: AppLayout.getHeight(15),
        ),
        TextButton(
            onPressed: ()=>Get.to(SignUpScreen()),
            child: Container(
              height: 50,
              width: Get.width * 0.7,
              decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(width: 1, color: bTColor)),
              child: Center(
                  child: Text(
                "Sign Up",
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
                    'Sign In',
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
              image: AssetImage('assets/images/9.jpg'), fit: BoxFit.cover)),
    );
  }

  Column loginform() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Username",
          style: TextStyle(color: tFColor, fontSize: 18),
        ),
          TextFormField(
            controller: _nameController, // Bind the controller
            decoration: InputDecoration(
                enabledBorder:
                    UnderlineInputBorder(borderSide: BorderSide(color: tFColor)),
                focusedBorder:
                    UnderlineInputBorder(borderSide: BorderSide(color: tFColor)),
                hintText: "Faheem Rao",
                hoverColor: CupertinoColors.activeGreen),
            validator: (value) {
              if (value != null && value.isEmpty) {
                return "Username can't be empty";
              }
              return null;
            },
          ),
        SizedBox(
          height: AppLayout.getHeight(15),
        ),
        Text(
          "Password",
          style: TextStyle(color: tFColor, fontSize: 18),
        ),
        TextFormField(
          obscureText: true,
          decoration: InputDecoration(
            enabledBorder:
                UnderlineInputBorder(borderSide: BorderSide(color: tFColor)),
            focusedBorder:
                UnderlineInputBorder(borderSide: BorderSide(color: tFColor)),
            hintText: "Your Password ",
          ),
          validator: (value) {
            if (value != null && value.isEmpty) {
              return "Password can't be empty";
            } else if (value!.length < 6) {
              return "Password must contain at least 6 characters";
            }
            return null;
          },
        ),
        SizedBox(
          height: AppLayout.getHeight(15),
        ),
        Align(
          alignment: Alignment.centerRight,
          child: TextButton(
              onPressed: ()=>Get.to(ForgetPasswordScreen()),
              child: Text(
                "Forgot your password?",
                style: TextStyle(color: Colors.white),
              )),
        )
      ],
    );
  }
}
