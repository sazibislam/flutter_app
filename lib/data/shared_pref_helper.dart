import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefHelper {
  SharedPreferences prefs;

  Future<String> getName(String user) async {
    prefs = await SharedPreferences.getInstance();
    return prefs.getString(user) ?? "null";
  }

  Future<bool> saveName(String name) async {
    prefs = await SharedPreferences.getInstance();
    return prefs.setString("username", name) ?? false;
  }

  removeAll() async {
    prefs = await SharedPreferences.getInstance();
    prefs.clear();
  }

  removeName(String name) async {
    prefs = await SharedPreferences.getInstance();
    prefs.remove(name);
  }
}
