import 'package:decore/screens/HomePage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'screens/homescreen.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
    debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      darkTheme: ThemeData(
          textTheme: TextTheme(
            bodyText1:  TextStyle(
                fontSize: 18 ,
                color: Colors.white
            ),
          ),
          primarySwatch: Colors.deepOrange,
          scaffoldBackgroundColor: Colors.grey,
          floatingActionButtonTheme: FloatingActionButtonThemeData(
            backgroundColor: Colors.grey,
          ),
          bottomNavigationBarTheme: BottomNavigationBarThemeData(
            selectedItemColor: Colors.deepOrangeAccent,
            type: BottomNavigationBarType.fixed,
            unselectedItemColor: Colors.grey,
            backgroundColor: Colors.grey,
          ),
          appBarTheme: AppBarTheme(
            backwardsCompatibility: false,
            systemOverlayStyle: SystemUiOverlayStyle(
                statusBarColor: Colors.grey,
                statusBarIconBrightness: Brightness.light
            ),
            backgroundColor:Colors.grey,
            elevation: 0,
            centerTitle: true,
            titleTextStyle: TextStyle(
              color: Colors.white,
              fontSize: 25,

            ),
          )
      ),
      theme: ThemeData(
          floatingActionButtonTheme: FloatingActionButtonThemeData(
            backgroundColor:  Colors.deepOrangeAccent,
          ),
          bottomNavigationBarTheme: BottomNavigationBarThemeData(
            selectedItemColor: Colors.deepOrangeAccent,
            type: BottomNavigationBarType.fixed,

          ),
          scaffoldBackgroundColor: Colors.white,
          appBarTheme: AppBarTheme(
            iconTheme: IconThemeData(
                color: Colors.grey[900]
            ),
            backwardsCompatibility: false,
            systemOverlayStyle: SystemUiOverlayStyle(
              statusBarColor: Colors.white,
            ),
            backgroundColor: Colors.white,
            textTheme: TextTheme(
                headline6: TextStyle(

                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 25
                )
            ),
            elevation: 0,
            centerTitle: true,
            titleTextStyle: TextStyle(
              color: Colors.black,
              fontSize: 25,
            ),
          )

      ) ,
      home: HomePage(),

    );
  }
}
