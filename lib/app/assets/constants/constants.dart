import 'package:threads_clone/app/assets/exporter/exporter_app_general.dart';

class RegexConstant {
  static RegExp noSpacesRegex = RegExp(r'^\S*$');
  static RegExp onlyLettersNumbersUnderscoreRegex = RegExp(r'^[a-zA-Z0-9_]*$');
  static RegExp noSpecialCharacters = RegExp(r'^[a-zA-Z0-9 ]+$');
}

class ImageConstant {
  static const String threadsLogo = 'lib/app/assets/images/threads_logo.png';
  static const String threadsBg = 'lib/app/assets/images/threads_bg.png';
  static const String threadsBg2 = 'lib/app/assets/images/threads_bg2.png';
  static const String metaLogo = 'lib/app/assets/images/meta_logo.png';
}

class TextFormFieldError {
  static String noSpaceAllowed = S.current.noSpaceAllowed;
  static String onlyLettersNumbersUnderscore = S.current.onlyLettersNumbersUnderscore;
  static String noSpecialCharacters = S.current.noSpecialCharacters;
}

enum Language {
  english('en'),
  simplifiedChinese('zh');

  final String languageCode;
  const Language(this.languageCode);

  String get label {
    switch (this) {
      case english:
        return S.current.english;
      case simplifiedChinese:
        return S.current.simplifiedChinese;
    }
  }
}

enum FormFields { email, password, username, fullname, bio, link, post }

class TableName {
  static String users = 'users';
  static String posts = 'posts';
  static String likes = 'likes';
}

class TableCol {
  static String userId = 'userId';
  static String username = 'username';
  static String bio = 'bio';
  static String link = 'link';
}
