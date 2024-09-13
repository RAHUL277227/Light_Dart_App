import 'package:dark_light_mode/utils/ChangeTheme.dart';
import 'package:dark_light_mode/utils/LocalStore.dart';
import 'package:dark_light_mode/utils/MyTheme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool isOn = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Container(
          height: 250,
          width: 250,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Theme.of(context).colorScheme.primary
          ),
          child: Switch(
           activeTrackColor: Theme.of(context).colorScheme.secondary,
           value: isOn,
           onChanged: (value) {
             ChangeTheme().loadTheme();
             Provider.of<ChangeTheme>(context,listen: false).switchTheme();
            setState(() {
              isOn = value;
            });
          },),
        ),
      ),
    );
  }
}