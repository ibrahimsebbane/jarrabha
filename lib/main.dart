import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:jarrabha/screens/home/home_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitDown, DeviceOrientation.portraitUp]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Jerrabha',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          primaryColor: Colors.black,
          colorScheme: ColorScheme.fromSwatch().copyWith(primary: Colors.black, secondary: Colors.white),
          textTheme: const TextTheme(titleMedium: TextStyle(fontSize: 15, fontWeight: FontWeight.bold))),
      home: const HomeScreen(title: 'Jarrabha'),
    );
  }
}
