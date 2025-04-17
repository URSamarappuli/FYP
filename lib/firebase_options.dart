// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
        return windows;
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
    apiKey: 'AIzaSyBsCywAu1AbH9dM9wMpV8_-6RzTRwq9rgk',
    appId: '1:429097434330:web:6fda5b9a873d449f14f9e3',
    messagingSenderId: '429097434330',
    projectId: 'athentication-c0c04',
    authDomain: 'athentication-c0c04.firebaseapp.com',
    storageBucket: 'athentication-c0c04.firebasestorage.app',
    measurementId: 'G-XDYQXRWE8E',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCdL6CsBlnilPBf-mZYF5mdQRNsyyJfchU',
    appId: '1:429097434330:android:a40fdf28f9aca6d314f9e3',
    messagingSenderId: '429097434330',
    projectId: 'athentication-c0c04',
    storageBucket: 'athentication-c0c04.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAWmFHq8k2ogd4Esxd2ubM_jd8npfBQ-U4',
    appId: '1:429097434330:ios:82c375eb32a6e26c14f9e3',
    messagingSenderId: '429097434330',
    projectId: 'athentication-c0c04',
    storageBucket: 'athentication-c0c04.firebasestorage.app',
    iosBundleId: 'com.example.fypProject',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAWmFHq8k2ogd4Esxd2ubM_jd8npfBQ-U4',
    appId: '1:429097434330:ios:82c375eb32a6e26c14f9e3',
    messagingSenderId: '429097434330',
    projectId: 'athentication-c0c04',
    storageBucket: 'athentication-c0c04.firebasestorage.app',
    iosBundleId: 'com.example.fypProject',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyBsCywAu1AbH9dM9wMpV8_-6RzTRwq9rgk',
    appId: '1:429097434330:web:c1e4f5006207e6df14f9e3',
    messagingSenderId: '429097434330',
    projectId: 'athentication-c0c04',
    authDomain: 'athentication-c0c04.firebaseapp.com',
    storageBucket: 'athentication-c0c04.firebasestorage.app',
    measurementId: 'G-Q2HHZ27K21',
  );
}
