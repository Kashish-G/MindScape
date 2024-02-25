import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutterapp/TabsScreen.dart';

import 'package:riverpod/riverpod.dart';

import 'package:flutterapp/TabsScreen.dart';
import 'package:flutterapp/connectivity.dart';

final navigationProvider = StateProvider<int>((ref) => 0);
void main() {
  //SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
  // textTheme: GoogleFonts.latoTextTheme(Theme.of(context).textTheme),
  //      // textTheme: GoogleFonts.latoTextTheme(Theme.of(context).textTheme),
        colorScheme: ColorScheme.fromSeed(seedColor:Color.fromARGB(255, 255, 255, 255)),
    useMaterial3: true,
    
      ),
      home:
      //MyModelViewer()
    TabsScreen()
    ,
      
    );
  }
}

