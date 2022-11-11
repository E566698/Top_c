import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


import 'package:project_grad/component/button.dart';
import 'package:project_grad/component/color.dart';
import 'package:project_grad/presentation/Screens/login_screen.dart';
import 'package:project_grad/presentation/Screens/sign_up.dart';
class Try extends StatefulWidget {


  @override
  State<Try> createState() => _TryState();
}

class _TryState extends State<Try> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color:  Colors.cyan[50],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              height: 250,
              width: 250,
              decoration: new BoxDecoration(
                image: new DecorationImage(
                  image:AssetImage('assets/img/before.jpeg'),
                  fit: BoxFit.fill,
                ),

              ),

            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Text('Join our community of pneumonia detecting using chest x-ray and building healthy together',
                maxLines: 3,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold
                ),),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                children: [
                  Container(
                    width:double.infinity,
                    height: 60,

                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(35),
                      color: defaultColor,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],

                    ),
                    child: Center(
                        child: TextButton(
                          onPressed: (){
                            Navigator.push(context,
                            MaterialPageRoute(builder:(context){
                              return SignUp();
                            })
                            );
                          },
                          child:Text  ('Create an account ',
                            style: TextStyle(
                                color: Colors.black
                            ),
                          ),)
                    ),

                  ),
                  SizedBox(height: 10,),
              Container(
                width:double.infinity,
                height: 60,

                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(35),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: Center(
                    child: TextButton(
                      onPressed: (){
                     Navigator.push(context,
                  MaterialPageRoute(builder:(context){
                      return LoginScreen();
                  })
                     );
                      },
                      child:Text  ('Already have an account?',
                        style: TextStyle(
                            color: Colors.black
                        ),
                      ),)
                ),

              )
                ],
              ),
            )

          ],
        ),
      ),
    );
  }
}
