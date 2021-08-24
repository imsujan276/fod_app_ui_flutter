import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({Key? key, required this.label}) : super(key: key);
  final String label;
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.grey.withOpacity(.3),
      borderRadius: BorderRadius.circular(30),
      child: TextFormField(
        decoration: InputDecoration(
            border: InputBorder.none,
            // border: OutlineInputBorder(
            //   borderRadius: BorderRadius.circular(30),
            // ),
            hintText: label,
            prefix: Container(width: 20),
            hintStyle: TextStyle(
              color: Colors.grey,
            )),
      ),
    );
  }
}
