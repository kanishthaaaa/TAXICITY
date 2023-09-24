import 'package:flutter/material.dart';
import 'package:taxicity_app/screens/welcome_screen1.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: WelcomeScreen1(),
    );
  }
}