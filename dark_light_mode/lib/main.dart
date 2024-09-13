import 'package:dark_light_mode/Home.dart';
import 'package:dark_light_mode/utils/ChangeTheme.dart';
import 'package:dark_light_mode/utils/MyTheme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main(){
  runApp(
    ChangeNotifierProvider(create: 
    (context) => ChangeTheme()..loadTheme(),
    child: MyApp(),
    )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: Provider.of<ChangeTheme>(context).getTheme(),
      home: Home(),
    );
  }
}