import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nice_button/nice_button.dart';
import 'package:get/get.dart';
import 'package:social_app/screens/loginPage.dart';
import 'package:social_app/screens/registrationPage.dart';
import 'package:social_app/screens/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: const Text('Social App')),
          backgroundColor: Colors.amber,
        ),
        backgroundColor:Colors.grey,
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/bg.jpg'),
              fit: BoxFit.cover,
            )
          ),
          child: ListView(
            children: <Widget>[
              Center(
                  child: Container(
                    width: 400,
                    height: 400,
                    decoration: BoxDecoration(
                      //color: Colors.amber,
                        image: DecorationImage(
                          image: AssetImage('images/logo.png'),
                          fit: BoxFit.cover,
                        )
                    ),
                  )
              ),
              Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: NiceButton(
                      width: 160,
                      elevation: 8.0,
                      radius: 52.0,
                      text: "Login",
                      icon: Icons.account_box,
                      background: Colors.black54,
                      onPressed: () {
                        Get.to(LoginPage());
                        print("przycisk1");
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: NiceButton(
                        width: 160,
                        elevation: 8.0,
                        radius: 52.0,
                        text: "Register",
                        icon: Icons.email,
                        background: Colors.amber,
                        onPressed: () {
                          Get.to(RegistrationPage());
                          print("przycisk2");
                        }//=> Get.to(LoginPage()),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}