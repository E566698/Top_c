import 'package:flutter/material.dart';
import 'package:project_grad/component/color.dart';
Widget Container1(String x){
  return Container(
    width:double.infinity,
    height: 60,

    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(35),
      color: defaultColor,

    ),
    child: Center(
        child: TextButton(
          onPressed: (){},
          child:Text  ('$x',
            style: TextStyle(
                color: Colors.black
            ),
          ),)
    ),

  );
}