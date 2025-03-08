// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `ok`
  String get ok {
    return Intl.message(
      'ok',
      name: 'ok',
      desc: '',
      args: [],
    );
  }

  /// `Home`
  String get homeScreenLabel {
    return Intl.message(
      'Home',
      name: 'homeScreenLabel',
      desc: '',
      args: [],
    );
  }

  /// `Search`
  String get searchScreenLabel {
    return Intl.message(
      'Search',
      name: 'searchScreenLabel',
      desc: '',
      args: [],
    );
  }

  /// `Add Thread`
  String get addThreadScreenLabel {
    return Intl.message(
      'Add Thread',
      name: 'addThreadScreenLabel',
      desc: '',
      args: [],
    );
  }

  /// `Activity`
  String get activityScreenLabel {
    return Intl.message(
      'Activity',
      name: 'activityScreenLabel',
      desc: '',
      args: [],
    );
  }

  /// `Profile`
  String get profileScreenLabel {
    return Intl.message(
      'Profile',
      name: 'profileScreenLabel',
      desc: '',
      args: [],
    );
  }

  /// `English`
  String get english {
    return Intl.message(
      'English',
      name: 'english',
      desc: '',
      args: [],
    );
  }

  /// `Simplified chinese`
  String get simplifiedChinese {
    return Intl.message(
      'Simplified chinese',
      name: 'simplifiedChinese',
      desc: '',
      args: [],
    );
  }

  /// `Oops, something went wrong`
  String get somethingWentWrong {
    return Intl.message(
      'Oops, something went wrong',
      name: 'somethingWentWrong',
      desc: '',
      args: [],
    );
  }

  /// `The password you entered is too weak. Please choose a stronger password.`
  String get weakPassword {
    return Intl.message(
      'The password you entered is too weak. Please choose a stronger password.',
      name: 'weakPassword',
      desc: '',
      args: [],
    );
  }

  /// `This email address is already in use. Please use a different email.`
  String get usedEmail {
    return Intl.message(
      'This email address is already in use. Please use a different email.',
      name: 'usedEmail',
      desc: '',
      args: [],
    );
  }

  /// `The email or password you entered is incorrect. Please try again.`
  String get invalidCredential {
    return Intl.message(
      'The email or password you entered is incorrect. Please try again.',
      name: 'invalidCredential',
      desc: '',
      args: [],
    );
  }

  /// `Session Expired or User is not Authenticated, Please Login Again.`
  String get permissionDenied {
    return Intl.message(
      'Session Expired or User is not Authenticated, Please Login Again.',
      name: 'permissionDenied',
      desc: '',
      args: [],
    );
  }

  /// `There was an error with your request. Please try again later.`
  String get requestError {
    return Intl.message(
      'There was an error with your request. Please try again later.',
      name: 'requestError',
      desc: '',
      args: [],
    );
  }

  /// `We have blocked all requests from this device due to unusual activity. Try again later.`
  String get tooManyRequests {
    return Intl.message(
      'We have blocked all requests from this device due to unusual activity. Try again later.',
      name: 'tooManyRequests',
      desc: '',
      args: [],
    );
  }

  /// `This username is already taken. Please try another one.`
  String get usernameTaken {
    return Intl.message(
      'This username is already taken. Please try another one.',
      name: 'usernameTaken',
      desc: '',
      args: [],
    );
  }

  /// `Log Out`
  String get logOut {
    return Intl.message(
      'Log Out',
      name: 'logOut',
      desc: '',
      args: [],
    );
  }

  /// `Test Error`
  String get testError {
    return Intl.message(
      'Test Error',
      name: 'testError',
      desc: '',
      args: [],
    );
  }

  /// `Test Urgent Error`
  String get testUrgentError {
    return Intl.message(
      'Test Urgent Error',
      name: 'testUrgentError',
      desc: '',
      args: [],
    );
  }

  /// `Already have an account? Log In Now`
  String get loginCTA {
    return Intl.message(
      'Already have an account? Log In Now',
      name: 'loginCTA',
      desc: '',
      args: [],
    );
  }

  /// `Dont have an account yet? Create New Account`
  String get createAccountCTA {
    return Intl.message(
      'Dont have an account yet? Create New Account',
      name: 'createAccountCTA',
      desc: '',
      args: [],
    );
  }

  /// `Log in`
  String get login {
    return Intl.message(
      'Log in',
      name: 'login',
      desc: '',
      args: [],
    );
  }

  /// `Create new account`
  String get createNewAccount {
    return Intl.message(
      'Create new account',
      name: 'createNewAccount',
      desc: '',
      args: [],
    );
  }

  /// `Connect with your community, share your thoughts, and stay in the loop—welcome to Threads!`
  String get loginDesc {
    return Intl.message(
      'Connect with your community, share your thoughts, and stay in the loop—welcome to Threads!',
      name: 'loginDesc',
      desc: '',
      args: [],
    );
  }

  /// `Join Threads today—connect, share, and be part of the conversation!`
  String get createAccountDesc {
    return Intl.message(
      'Join Threads today—connect, share, and be part of the conversation!',
      name: 'createAccountDesc',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get email {
    return Intl.message(
      'Email',
      name: 'email',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get password {
    return Intl.message(
      'Password',
      name: 'password',
      desc: '',
      args: [],
    );
  }

  /// `Meta`
  String get meta {
    return Intl.message(
      'Meta',
      name: 'meta',
      desc: '',
      args: [],
    );
  }

  /// `from`
  String get from {
    return Intl.message(
      'from',
      name: 'from',
      desc: '',
      args: [],
    );
  }

  /// `Threads`
  String get threads {
    return Intl.message(
      'Threads',
      name: 'threads',
      desc: '',
      args: [],
    );
  }

  /// `Welcome back to Threads`
  String get loginTitle {
    return Intl.message(
      'Welcome back to Threads',
      name: 'loginTitle',
      desc: '',
      args: [],
    );
  }

  /// `Get started with Threads`
  String get createAccountTitle {
    return Intl.message(
      'Get started with Threads',
      name: 'createAccountTitle',
      desc: '',
      args: [],
    );
  }

  /// `Username`
  String get username {
    return Intl.message(
      'Username',
      name: 'username',
      desc: '',
      args: [],
    );
  }

  /// `@`
  String get at {
    return Intl.message(
      '@',
      name: 'at',
      desc: '',
      args: [],
    );
  }

  /// `No space allowed`
  String get noSpaceAllowed {
    return Intl.message(
      'No space allowed',
      name: 'noSpaceAllowed',
      desc: '',
      args: [],
    );
  }

  /// `Only letters, numbers, and underscores allowed`
  String get onlyLettersNumbersUnderscore {
    return Intl.message(
      'Only letters, numbers, and underscores allowed',
      name: 'onlyLettersNumbersUnderscore',
      desc: '',
      args: [],
    );
  }

  /// `No special characters allowed`
  String get noSpecialCharacters {
    return Intl.message(
      'No special characters allowed',
      name: 'noSpecialCharacters',
      desc: '',
      args: [],
    );
  }

  /// `Full Name`
  String get fullName {
    return Intl.message(
      'Full Name',
      name: 'fullName',
      desc: '',
      args: [],
    );
  }

  /// `Bio`
  String get bio {
    return Intl.message(
      'Bio',
      name: 'bio',
      desc: '',
      args: [],
    );
  }

  /// `Link`
  String get link {
    return Intl.message(
      'Link',
      name: 'link',
      desc: '',
      args: [],
    );
  }

  /// `Complete Profile`
  String get profileSetupTitle {
    return Intl.message(
      'Complete Profile',
      name: 'profileSetupTitle',
      desc: '',
      args: [],
    );
  }

  /// `Customize your Threads profile.`
  String get profileSetupDesc {
    return Intl.message(
      'Customize your Threads profile.',
      name: 'profileSetupDesc',
      desc: '',
      args: [],
    );
  }

  /// `Skip`
  String get skip {
    return Intl.message(
      'Skip',
      name: 'skip',
      desc: '',
      args: [],
    );
  }

  /// `How Threads work`
  String get howThreadsWorks {
    return Intl.message(
      'How Threads work',
      name: 'howThreadsWorks',
      desc: '',
      args: [],
    );
  }

  /// `Powered by Instagram`
  String get howThreadWorksTitle1 {
    return Intl.message(
      'Powered by Instagram',
      name: 'howThreadWorksTitle1',
      desc: '',
      args: [],
    );
  }

  /// `Threads is part of the Instagram platform. We will use your Threads and Instagram information to personalize ads and other experiences across Threads and Instagram.`
  String get howThreadWorksDesc1 {
    return Intl.message(
      'Threads is part of the Instagram platform. We will use your Threads and Instagram information to personalize ads and other experiences across Threads and Instagram.',
      name: 'howThreadWorksDesc1',
      desc: '',
      args: [],
    );
  }

  /// `The fediverse`
  String get howThreadWorksTitle2 {
    return Intl.message(
      'The fediverse',
      name: 'howThreadWorksTitle2',
      desc: '',
      args: [],
    );
  }

  /// `Future versions of Threads will work with the fediverse, a new type of social media network that allows people to follow and interact with each other on different platforms, like Mastodon.`
  String get howThreadWorksDesc2 {
    return Intl.message(
      'Future versions of Threads will work with the fediverse, a new type of social media network that allows people to follow and interact with each other on different platforms, like Mastodon.',
      name: 'howThreadWorksDesc2',
      desc: '',
      args: [],
    );
  }

  /// `Your data`
  String get howThreadWorksTitle3 {
    return Intl.message(
      'Your data',
      name: 'howThreadWorksTitle3',
      desc: '',
      args: [],
    );
  }

  /// `By joining Threads, you agree to the Meta Terms and Threads Supplemental Terms, and acknowledge you have read the Meta Privacy Policy and Threads Supplemental Privacy Policy.`
  String get howThreadWorksDesc3 {
    return Intl.message(
      'By joining Threads, you agree to the Meta Terms and Threads Supplemental Terms, and acknowledge you have read the Meta Privacy Policy and Threads Supplemental Privacy Policy.',
      name: 'howThreadWorksDesc3',
      desc: '',
      args: [],
    );
  }

  /// `Continue`
  String get continueLabel {
    return Intl.message(
      'Continue',
      name: 'continueLabel',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'zh'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
