import 'package:shared_preferences/shared_preferences.dart';

class ConnectivityInfo {
  late final SharedPreferences _sharedPrefs;

  Future<void> init() async {
    _sharedPrefs = await SharedPreferences.getInstance();
  }

  String get connectstatus => _sharedPrefs.getString(keyConnectivity) ?? "";

  set connectionstatus(String value) {
    print("value..............$value");
    _sharedPrefs.setString(keyConnectivity, value);
  }
}

final sharedPrefs = ConnectivityInfo();
// constants/strings.dart
const String keyConnectivity = "connectivity";
