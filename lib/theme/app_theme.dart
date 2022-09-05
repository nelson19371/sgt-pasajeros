import 'package:flutter/material.dart';

class AppTheme{
static const Color primary = Colors.white;

static final ThemeData lightTheme = ThemeData.dark().copyWith(
       
        appBarTheme: const AppBarTheme(
          
          
          color: Colors.amber,
          elevation: 0,
        ),
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(primary: Colors.amber)
        ),


        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: primary
        ),

        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            primary: Colors.blueAccent,
            shape: const StadiumBorder(),
            elevation: 0
        ),

        ),

        inputDecorationTheme: const InputDecorationTheme(
          floatingLabelStyle: TextStyle( color: Colors.white),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: primary),
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10), topRight: Radius.circular(10))
          ),

          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color:primary),
            borderRadius:BorderRadius.only(bottomLeft: Radius.circular(10), topRight: Radius.circular(10))
          ),


          border:OutlineInputBorder(
           
            borderRadius:BorderRadius.only(bottomLeft: Radius.circular(10), topRight: Radius.circular(10))
          ),





        )
      );
  
}