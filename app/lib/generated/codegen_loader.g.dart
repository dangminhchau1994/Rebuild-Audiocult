// DO NOT EDIT. This is code generated via package:easy_localization/generate.dart

// ignore_for_file: prefer_single_quotes

import 'dart:ui';

import 'package:easy_localization/easy_localization.dart' show AssetLoader;

class CodegenLoader extends AssetLoader{
  const CodegenLoader();

  @override
  Future<Map<String, dynamic>?> load(String path, Locale locale) {
    return Future.value(mapLocales[locale.toString()]);
  }

  static const Map<String,dynamic> en_US = {
  "app_name": "Rebuild Audiocult",
  "auth": {
    "full_name": "Full Name",
    "user_name": "Username (slug)",
    "location": "Location",
    "email": "Email",
    "password": "Password",
    "checked_term": "I’d like to recieve emails with content and notifications.",
    "confirm_term": "By signing up, you confirm that you’ve read and accepted our",
    "underline_confirm_term": "",
    "sign_up": "Sign Up",
    "sign_in": "Sign In",
    "forgot_password": "Forgot Password?",
    "remember_me": "Remember Me"
  }
};
static const Map<String, Map<String,dynamic>> mapLocales = {"en_US": en_US};
}
