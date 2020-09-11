import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:social_app/screens/loginPage.dart';
import 'package:nice_button/nice_button.dart';
import 'package:social_app/screens/home.dart';

class RegistrationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Social App"),
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
        child: Center(
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
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: <Widget>[
                    Flexible(
                      child: TextField(
                        obscureText: false,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'First Name',
                        ),
                      ),
                    ),

                    Flexible(
                      child: TextField(
                        obscureText: false,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Last Name',
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  obscureText: false,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Email',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Confirm Password',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: NiceButton(
                    width: 280,
                    elevation: 8.0,
                    radius: 52.0,
                    text: "Confirm Registration",
                    icon: Icons.email,
                    background: Colors.amber,
                    onPressed: () {
                      Get.to(LoginPage());
                      print("przycisk2");
                    }
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}