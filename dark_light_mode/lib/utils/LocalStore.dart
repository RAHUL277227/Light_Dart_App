import 'package:shared_preferences/shared_preferences.dart';

class Helper {
  bool isOn = false;

  Helper() {
    _initialize();
  }

  Future<void> _initialize() async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    isOn = pref.getBool('switchData') ?? false; // Default to false if no value is found
  }

  Future<void> setSwitchData(bool data) async {
    isOn = data;
    print(isOn);
    final SharedPreferences pref = await SharedPreferences.getInstance();
    await pref.setBool('switchData', isOn);
  }

  Future<bool> getSwitchData() async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    return pref.getBool('switchData') ?? false; // Default to false if no value is found
  }
}
