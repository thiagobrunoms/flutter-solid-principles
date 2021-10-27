import 'dart:async';
import 'dart:convert';

import 'package:flutter_solid/solid/data/datasource/i_local_datasource.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesDatasource implements ILocalDatasource<Map> {
  final String key = 'token';
  late SharedPreferences instance;
  Completer completer = Completer();

  SharedPreferencesDatasource() {
    completer.complete(SharedPreferences.getInstance());
  }

  @override
  Future<Map<String, dynamic>> read() async {
    instance = await completer.future;

    String? tokenStr = instance.getString(key);
    if (tokenStr != null) {
      return json.decode(tokenStr);
    }

    return {};
  }

  @override
  Future<bool> write(Map<String, dynamic> token) async {
    instance = await completer.future;
    return instance.setString(key, json.encode(token));
  }
}
