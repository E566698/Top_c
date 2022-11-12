import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';


import 'package:project_grad/presentation/Screens/splash_screen.dart';





main() async{
  // BlocObserver  = MyBlocObserver();
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  // DioHelper.init();
  runApp( MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      //   primarySwatch: Colors.red,
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: AppBarTheme(
            iconTheme: IconThemeData(
                color: Colors.black
            ),
            backwardsCompatibility :false,
            // systemOverlayStyle: SystemUiOverlayStyle(
            //     statusBarColor: Colors.white,
            //     statusBarIconBrightness: Brightness.dark
            // ),
            backgroundColor: Colors.white,
            elevation: 0.0,
            titleTextStyle: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold

            )
        ),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          // selectedItemColor: Colors.redAccent,
          type: BottomNavigationBarType.fixed,

        )
    ),
    home:SplashScreen(),
  ));



}
