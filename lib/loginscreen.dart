import 'dart:ui';

import 'Component.dart';

import 'package:flutter/material.dart';

import 'Forgetpassword.dart';
import 'Homescreen.dart';
import 'Loginwithphoneno.dart';
import 'SignUpScreen.dart';

class loginscreen extends StatefulWidget {
  const loginscreen({super.key});

  @override
  State<loginscreen> createState() => _loginscreenState();
}

class _loginscreenState extends State<loginscreen> {
  final _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final emailcon = TextEditingController();
    final Passwordcon = TextEditingController();

    return Scaffold(
      backgroundColor: Color.fromARGB(15, 187, 187, 187),
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.7,
            decoration: BoxDecoration(
                color: bcolor,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                )),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 15,
                ),
                Center(
                  child: Text(
                    "Firebase",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(12),
                  child: Container(
                    width: MediaQuery.of(context).size.height * 0.4,
                    height: MediaQuery.of(context).size.height * 0.7,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(12),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            "Login",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 24),
                          ),
                          SizedBox(
                            height: 45,
                          ),
                          Form(
                            key: _formkey,
                            child: Column(
                              children: [
                                TextFormField(
                                    validator: (value) {
                                      if (value!.isEmpty) {
                                        return 'Enter Email';
                                      } else {
                                        return null;
                                      }
                                    },
                                    keyboardType: TextInputType.emailAddress,
                                    controller: emailcon,
                                    decoration: InputDecoration(
                                      hintText: "Email",
                                    )),
                                TextFormField(
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return 'Enter Password';
                                    } else {
                                      return null;
                                    }
                                  },
                                  keyboardType: TextInputType.emailAddress,
                                  controller: Passwordcon,
                                  decoration: InputDecoration(
                                    hintText: "Password",
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                forgetpassword()));
                                  },
                                  child: Text(
                                    "Forgot password?",
                                    style: TextStyle(color: Colors.black),
                                  )),
                            ],
                          ),
                          SizedBox(
                            height: 55,
                          ),
                          roundbutton(
                              title: "Login",
                              tapfun: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            homescreen(name: '')));
                              }),
                          SizedBox(
                            height: 10,
                          ),
                          Text("- OR -"),
                          SizedBox(
                            height: 10,
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          loginwithphoneno()));
                            },
                            child: Container(
                              height: 37,
                              width: 49,
                              decoration: BoxDecoration(
                                color: bcolor,
                                shape: BoxShape.circle,
                              ),
                              child: Icon(
                                Icons.phone,
                                color: Colors.white,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(30),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  TextButton(
                      onPressed: () {
                        if (_formkey.currentState!.validate()) {}

                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => signUpScreen()));
                      },
                      child: Text("Sign Up")),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
