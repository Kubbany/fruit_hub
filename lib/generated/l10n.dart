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
    assert(
      _current != null,
      'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.',
    );
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
    assert(
      instance != null,
      'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?',
    );
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Welcome to `
  String get welcome_at {
    return Intl.message('Welcome to ', name: 'welcome_at', desc: '', args: []);
  }

  /// `Discover a unique shopping experience with FruitHUB. Explore our wide collection of fresh premium fruits and get the best offers and high quality.`
  String get on_boarding_p1_description {
    return Intl.message(
      'Discover a unique shopping experience with FruitHUB. Explore our wide collection of fresh premium fruits and get the best offers and high quality.',
      name: 'on_boarding_p1_description',
      desc: '',
      args: [],
    );
  }

  /// `Search and Shop`
  String get search_and_shop {
    return Intl.message(
      'Search and Shop',
      name: 'search_and_shop',
      desc: '',
      args: [],
    );
  }

  /// `We provide you with the best carefully selected fruits. Check details, images, and ratings to make sure you choose the perfect fruit.`
  String get on_boarding_p2_description {
    return Intl.message(
      'We provide you with the best carefully selected fruits. Check details, images, and ratings to make sure you choose the perfect fruit.',
      name: 'on_boarding_p2_description',
      desc: '',
      args: [],
    );
  }

  /// `Skip`
  String get skip {
    return Intl.message('Skip', name: 'skip', desc: '', args: []);
  }

  /// `Start Now`
  String get start_now {
    return Intl.message('Start Now', name: 'start_now', desc: '', args: []);
  }

  /// `Login`
  String get login {
    return Intl.message('Login', name: 'login', desc: '', args: []);
  }

  /// `Email`
  String get email {
    return Intl.message('Email', name: 'email', desc: '', args: []);
  }

  /// `Password`
  String get password {
    return Intl.message('Password', name: 'password', desc: '', args: []);
  }

  /// `Forgot password?`
  String get forgot_password {
    return Intl.message(
      'Forgot password?',
      name: 'forgot_password',
      desc: '',
      args: [],
    );
  }

  /// `Don't have an account?`
  String get dont_have_an_account {
    return Intl.message(
      'Don\'t have an account?',
      name: 'dont_have_an_account',
      desc: '',
      args: [],
    );
  }

  /// `Create an account`
  String get create_account {
    return Intl.message(
      'Create an account',
      name: 'create_account',
      desc: '',
      args: [],
    );
  }

  /// `Or`
  String get or {
    return Intl.message('Or', name: 'or', desc: '', args: []);
  }

  /// `Sign in with Google`
  String get sign_in_with_google {
    return Intl.message(
      'Sign in with Google',
      name: 'sign_in_with_google',
      desc: '',
      args: [],
    );
  }

  /// `Sign in with Apple`
  String get sign_in_with_apple {
    return Intl.message(
      'Sign in with Apple',
      name: 'sign_in_with_apple',
      desc: '',
      args: [],
    );
  }

  /// `Sign in with Facebook`
  String get sign_in_with_facebook {
    return Intl.message(
      'Sign in with Facebook',
      name: 'sign_in_with_facebook',
      desc: '',
      args: [],
    );
  }

  /// `New Account`
  String get new_account {
    return Intl.message('New Account', name: 'new_account', desc: '', args: []);
  }

  /// `Full Name`
  String get full_name {
    return Intl.message('Full Name', name: 'full_name', desc: '', args: []);
  }

  /// `Confirm Password`
  String get confirm_password {
    return Intl.message(
      'Confirm Password',
      name: 'confirm_password',
      desc: '',
      args: [],
    );
  }

  /// `By creating an account, you agree to`
  String get by_creating_account {
    return Intl.message(
      'By creating an account, you agree to',
      name: 'by_creating_account',
      desc: '',
      args: [],
    );
  }

  /// `our Terms and Conditions`
  String get agree_terms {
    return Intl.message(
      'our Terms and Conditions',
      name: 'agree_terms',
      desc: '',
      args: [],
    );
  }

  /// `Create New Account`
  String get create_new_account {
    return Intl.message(
      'Create New Account',
      name: 'create_new_account',
      desc: '',
      args: [],
    );
  }

  /// `Already have an account?`
  String get have_account {
    return Intl.message(
      'Already have an account?',
      name: 'have_account',
      desc: '',
      args: [],
    );
  }

  /// `Forgot Password`
  String get reset_password {
    return Intl.message(
      'Forgot Password',
      name: 'reset_password',
      desc: '',
      args: [],
    );
  }

  /// `Don't worry, just enter your email and we'll send you a verification code.`
  String get type_email_code {
    return Intl.message(
      'Don\'t worry, just enter your email and we\'ll send you a verification code.',
      name: 'type_email_code',
      desc: '',
      args: [],
    );
  }

  /// `Send Verification Code`
  String get send_code {
    return Intl.message(
      'Send Verification Code',
      name: 'send_code',
      desc: '',
      args: [],
    );
  }

  /// `Verify Code`
  String get check_code {
    return Intl.message('Verify Code', name: 'check_code', desc: '', args: []);
  }

  /// `Enter the code we sent to the following email address`
  String get type_recieved_code {
    return Intl.message(
      'Enter the code we sent to the following email address',
      name: 'type_recieved_code',
      desc: '',
      args: [],
    );
  }

  /// `Verify Code`
  String get check_code_button {
    return Intl.message(
      'Verify Code',
      name: 'check_code_button',
      desc: '',
      args: [],
    );
  }

  /// `Resend Code`
  String get resend_code {
    return Intl.message('Resend Code', name: 'resend_code', desc: '', args: []);
  }

  /// `New Password`
  String get new_password {
    return Intl.message(
      'New Password',
      name: 'new_password',
      desc: '',
      args: [],
    );
  }

  /// `Enter Your New Password`
  String get enter_new_password {
    return Intl.message(
      'Enter Your New Password',
      name: 'enter_new_password',
      desc: '',
      args: [],
    );
  }

  /// `ReEnter Your New Password`
  String get reenter_new_password {
    return Intl.message(
      'ReEnter Your New Password',
      name: 'reenter_new_password',
      desc: '',
      args: [],
    );
  }

  /// `Create a new password to login`
  String get create_new_password {
    return Intl.message(
      'Create a new password to login',
      name: 'create_new_password',
      desc: '',
      args: [],
    );
  }

  /// `Create New Password`
  String get create_new_password_button {
    return Intl.message(
      'Create New Password',
      name: 'create_new_password_button',
      desc: '',
      args: [],
    );
  }

  /// `Password changed successfully`
  String get new_password_success {
    return Intl.message(
      'Password changed successfully',
      name: 'new_password_success',
      desc: '',
      args: [],
    );
  }

  /// `Please enter the password again`
  String get new_password_failure {
    return Intl.message(
      'Please enter the password again',
      name: 'new_password_failure',
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
      Locale.fromSubtags(languageCode: 'ar'),
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
