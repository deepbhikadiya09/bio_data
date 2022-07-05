import 'package:bio_data/biodata_screen.dart';
import 'package:bio_data/finaldata_screen.dart';
import 'package:bio_data/splash_screen.dart';
import 'package:flutter/material.dart';
void main()
{
  runApp(
    MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
    routes: {
      '/':(context)=>SplashScreen(),
      '/BioData':(context)=>BioData(),
      '/FinalData':(context)=>FinalData(),
    },
    ),
  );
}