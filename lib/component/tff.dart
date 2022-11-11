import 'package:flutter/material.dart';
Widget TFF(){
  return TextFormField(

    decoration: InputDecoration(
      // prefixIcon: Icon(
      //   Icons.lock_outline,
      //   color: Colors.cyan,
      // ),
      border: OutlineInputBorder(
        // width: 0.0 produces a thin "hairline" border
        borderRadius: BorderRadius.all(Radius.circular(90.0)),
        borderSide: BorderSide.none,
      ),

      hintStyle: TextStyle(color: Colors.black,fontFamily: "WorkSansLight"),
      filled: true,
      fillColor: Colors.grey[20],
      // hintText: 'Password'
    ),
  );
}