import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

class AppLanguage {
  final Locale locale;
  final String language;

  AppLanguage(this.locale, this.language);
}

class AppLanguageProvider extends ChangeNotifier {
  static const english = Locale('en', 'US');

  final languageList = [AppLanguage(english, tr("english"))];

  Locale _locale = english;

  Locale get locale => _locale;

  void changeLanguage(Locale locale) async {
    _locale = locale;
    notifyListeners();
  }
}
