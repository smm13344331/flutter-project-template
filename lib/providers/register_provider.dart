import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class RegisterProvider with ChangeNotifier{
  final SharedPreferences _preferences;
  RegisterProvider(this._preferences);
  
}