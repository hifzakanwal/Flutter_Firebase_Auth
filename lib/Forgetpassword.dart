import 'package:flutter/material.dart';
import 'Component.dart';
import 'loginscreen.dart';

class forgetpassword extends StatefulWidget {
  const forgetpassword({super.key});

  @override
  State<forgetpassword> createState() => _forgetpasswordState();
}

class _forgetpasswordState extends State<forgetpassword> {
  final phonecon = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Reset Password"),
        backgroundColor: bcolor,
      ),
      body: Column(children: [
        SizedBox(
          height: 70,
        ),
        Text(
          "Enter the email associated with your account \n and we'll send an email with instructions to \n reset your password",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 18,
          ),
        ),
        SizedBox(
          height: 70,
        ),
        Padding(
          padding: const EdgeInsets.all(20),
          child: TextFormField(
            controller: phonecon,
            decoration: InputDecoration(
              filled: true,
              focusedBorder:
                  OutlineInputBorder(borderSide: BorderSide(color: bcolor)),
              // enabledBorder:
              //     UnderlineInputBorder(borderSide: BorderSide(color: bcolor)),
              fillColor: Colors.white,
              hintText: "Enter you email ",
            ),
          ),
        ),
        roundbutton(
            title: "Send ",
            tapfun: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => loginscreen()));
            }),
      ]),
    );
  }
}
