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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyBIkHB_G5Y752Wm5d8cj-ey9luTZY25t9o',
    appId: '1:238907739344:web:2ca9dcfbf9561fbb4aa2d5',
    messagingSenderId: '238907739344',
    projectId: 'blaze-plan--advance',
    authDomain: 'blaze-plan--advance.firebaseapp.com',
    storageBucket: 'blaze-plan--advance.appspot.com',
    measurementId: 'G-V9B47LNC5V',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAEfx0AbInLPbDFncfcG5V_khd27dfECw0',
    appId: '1:238907739344:android:6ceb265609679fbf4aa2d5',
    messagingSenderId: '238907739344',
    projectId: 'blaze-plan--advance',
    storageBucket: 'blaze-plan--advance.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBItF_s8NO8bCfWfBDJ0mGYee-Il8Ccb2c',
    appId: '1:238907739344:ios:ed23d0a6c3e634f04aa2d5',
    messagingSenderId: '238907739344',
    projectId: 'blaze-plan--advance',
    storageBucket: 'blaze-plan--advance.appspot.com',
    iosClientId: '238907739344-j2aot5rmeodgd4p5a15u60fq4gd0cou3.apps.googleusercontent.com',
    iosBundleId: 'com.template.advanceFirebase',
  );
}
