// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyD_88r8btaxRaHjWtn0M7iAePwSOq6ZXMg',
    appId: '1:678557577625:web:4052ea5cbe105bca2da308',
    messagingSenderId: '678557577625',
    projectId: 'alraedclub-6d192',
    authDomain: 'alraedclub-6d192.firebaseapp.com',
    storageBucket: 'alraedclub-6d192.appspot.com',
    measurementId: 'G-CSNTXX079W',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyA-pDuT-dJkcP3YQLYBRZlO3EUr8GTz5rE',
    appId: '1:678557577625:android:c558eb0ca7c5d5272da308',
    messagingSenderId: '678557577625',
    projectId: 'alraedclub-6d192',
    storageBucket: 'alraedclub-6d192.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyA6ik_9JjkR8P5FexWI6N5HUmxDW-qfM0A',
    appId: '1:678557577625:ios:867e1219654f39542da308',
    messagingSenderId: '678557577625',
    projectId: 'alraedclub-6d192',
    storageBucket: 'alraedclub-6d192.appspot.com',
    iosBundleId: 'com.example.alradiApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyA6ik_9JjkR8P5FexWI6N5HUmxDW-qfM0A',
    appId: '1:678557577625:ios:98f2b6ff95d7b5fe2da308',
    messagingSenderId: '678557577625',
    projectId: 'alraedclub-6d192',
    storageBucket: 'alraedclub-6d192.appspot.com',
    iosBundleId: 'com.example.alradiApp.RunnerTests',
  );
}
