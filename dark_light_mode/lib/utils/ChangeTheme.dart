import 'package:dark_light_mode/utils/MyTheme.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ChangeTheme extends ChangeNotifier{
  ThemeData _themeData = MyTheme().lightTheme;

  ThemeData getTheme(){
    return _themeData;
  }

  void switchTheme()async{
    final SharedPreferences pref = await SharedPreferences.getInstance();
    if(_themeData == MyTheme().lightTheme){
      _themeData = MyTheme().darkTheme;
      await pref.setBool('isDark', true);
    }else{
      _themeData = MyTheme().lightTheme;
      await pref.setBool('isDark', false);
    }
    notifyListeners();
  }

  void loadTheme()async{
    final SharedPreferences pref = await SharedPreferences.getInstance();
    if(await pref.getBool('isDark')!){
      _themeData = MyTheme().darkTheme;
    }else{
      _themeData = MyTheme().lightTheme;
    }
  }
}