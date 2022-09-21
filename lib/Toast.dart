import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void toastmessage(String msg) {
  Fluttertoast.showToast(
    msg: msg,
    backgroundColor: Colors.red,
    textColor: Colors.white,
    fontSize: 16,
    gravity: ToastGravity.BOTTOM,
    toastLength: Toast.LENGTH_SHORT,
    timeInSecForIosWeb: 4,
  );
}
