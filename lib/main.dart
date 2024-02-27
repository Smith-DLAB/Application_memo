import 'package:application_one/screens/login_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp( const MyApp() );
}

// DEFINIR UNE PAGE COMME SANS ETAT - EG : SPLASHSCREEN 
class MyApp extends StatelessWidget {

  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(

      debugShowCheckedModeBanner: false,
      title: 'Memo App',
      theme: ThemeData (
        colorScheme: ColorScheme.fromSeed( seedColor: Color(0x86D13A3A) ),
        useMaterial3: true,
      ),
      home: LoginScreen(),

    );

  }

}
