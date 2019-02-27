import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefHelper {
  SharedPreferences prefs;

  Future<String> getName(String user) async {
    prefs = await SharedPreferences.getInstance();
    //String name = prefs.getString("username");
    return prefs.getString("username") ?? "Sazib";
  }

  Future<bool> saveName(String name) async {
    prefs = await SharedPreferences.getInstance();
    return prefs.setString("username", name.toString()) ?? false;
  }

  removeAll() async {
    prefs = await SharedPreferences.getInstance();
    prefs.clear();
  }

  removeData(String name) async {
    prefs = await SharedPreferences.getInstance();
    prefs.remove(name);
  }
}
