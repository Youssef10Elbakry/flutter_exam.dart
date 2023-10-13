import 'package:flutter/material.dart';
import 'package:flutter_exam/first screen/ui/first_screen.dart';
import 'package:flutter_exam/first%20screen/first_screen_provider.dart';
import 'package:flutter_exam/second%20screen/second_screen_provider.dart';
import 'package:flutter_exam/second%20screen/ui/second_screen.dart';
import 'package:flutter_exam/third%20screen/third_screen_provider.dart';
import 'package:flutter_exam/third%20screen/ui/third_screen.dart';
import 'package:provider/provider.dart';
void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_)=>FirstScreenProvider()),
      ChangeNotifierProvider(create: (_)=>SecondScreenProvider()),
      ChangeNotifierProvider(create: (_)=>ThirdScreenProvider())
    ],
      child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        FirstScreen.firstScreenRoute: (_) => FirstScreen(),
        SecondScreen.secondScreenRoute: (_)=> SecondScreen(),
        ThirdScreen.thirdScreenRoute: (_)=> ThirdScreen()
      },
      initialRoute: ThirdScreen.thirdScreenRoute,
    );
  }

}