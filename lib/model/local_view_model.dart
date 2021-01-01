import 'package:flutter/material.dart';
import 'package:flutter_songsareawesome/config/storage_manager.dart';

class LocaleModel extends ChangeNotifier {
  static const localeValueList = ['fr-FR', 'en'];

  //
  static const kLocaleIndex = 'kLocaleIndex';

  int _localeIndex;

  int get localeIndex => _localeIndex;

  Locale get locale {
    var value = localeValueList[_localeIndex].split("-");
    return Locale(value[0], value.length == 2 ? value[1] : '');
  }

  LocaleModel() {
    _localeIndex = StorageManager.sharedPreferences.getInt(kLocaleIndex) ?? 0;
  }

  switchLocale() {
    _localeIndex = 1 - _localeIndex;
    notifyListeners();
    StorageManager.sharedPreferences.setInt(kLocaleIndex, _localeIndex);
  }

}
