import 'package:flutter/material.dart';

const bcolor = Color(0xff2470c7);

class roundbutton extends StatelessWidget {
  final String title;
  final VoidCallback tapfun;
  final bool loading;
  const roundbutton(
      {super.key,
      required this.title,
      required this.tapfun,
      this.loading = false});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: tapfun,
      child: Container(
        height: 45,
        width: 150,
        decoration: BoxDecoration(
          color: bcolor,
          borderRadius: BorderRadius.circular(25.2),
        ),
        child: Center(
            child: loading
                ? CircularProgressIndicator(
                    strokeWidth: 3,
                    color: Colors.black,
                  )
                : Text(
                    title,
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 15),
                  )),
      ),
    );
  }
}
