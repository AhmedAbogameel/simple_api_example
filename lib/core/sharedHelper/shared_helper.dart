import 'package:shared_preferences/shared_preferences.dart';

class SharedHelper {

  static SharedPreferences _prefs;

  static void init() async => _prefs =  await SharedPreferences.getInstance();

  static void setId(String value) =>
    _prefs.setString('id', value);

  static bool containsId () => _prefs.containsKey('id');

  static void removeId ()
  => _prefs.remove('id');

  static String get getId => _prefs.getString('id');

}