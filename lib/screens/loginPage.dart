import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nice_button/nice_button.dart';
import 'package:social_app/screens/registrationPage.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Social App"),
        backgroundColor: Colors.blueGrey,
      ),
      backgroundColor:Colors.grey,
      body: Center(
        child: ListView(
          children: <Widget>[
            Center(
                child: Container(
                  width: 200,
                  height: 200,
                  decoration: BoxDecoration(
                    //color: Colors.amber,
                      image: DecorationImage(
                        image: AssetImage('images/logo.png'),
                        fit: BoxFit.cover,
                      )
                  ),
                )
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                obscureText: false,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Email',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                ),
              ),
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
    );
  }
}