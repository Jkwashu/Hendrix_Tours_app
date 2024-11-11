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
    apiKey: 'AIzaSyDu9oeDBSRKbwQXyF5Y9mhZ_GQNbnW4FE8',
    appId: '1:252680531124:web:82af379f7ec51b806fbbe1',
    messagingSenderId: '252680531124',
    projectId: 'hendrix-tours-app',
    authDomain: 'hendrix-tours-app.firebaseapp.com',
    storageBucket: 'hendrix-tours-app.firebasestorage.app',
    measurementId: 'G-MYMYZ5XQEW',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDVHXjeB4U0OIe8L5T6cUrCqEVyORer9vQ',
    appId: '1:252680531124:android:b455c169f4562e7d6fbbe1',
    messagingSenderId: '252680531124',
    projectId: 'hendrix-tours-app',
    storageBucket: 'hendrix-tours-app.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCPOnAWmy5_f4PiXmKz0yIFCurKClRyZHs',
    appId: '1:252680531124:ios:a7cd04a41e4e89a36fbbe1',
    messagingSenderId: '252680531124',
    projectId: 'hendrix-tours-app',
    storageBucket: 'hendrix-tours-app.firebasestorage.app',
    iosBundleId: 'com.example.hendrixToursApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCPOnAWmy5_f4PiXmKz0yIFCurKClRyZHs',
    appId: '1:252680531124:ios:a7cd04a41e4e89a36fbbe1',
    messagingSenderId: '252680531124',
    projectId: 'hendrix-tours-app',
    storageBucket: 'hendrix-tours-app.firebasestorage.app',
    iosBundleId: 'com.example.hendrixToursApp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyDu9oeDBSRKbwQXyF5Y9mhZ_GQNbnW4FE8',
    appId: '1:252680531124:web:e06af2cc212d2b9f6fbbe1',
    messagingSenderId: '252680531124',
    projectId: 'hendrix-tours-app',
    authDomain: 'hendrix-tours-app.firebaseapp.com',
    storageBucket: 'hendrix-tours-app.firebasestorage.app',
    measurementId: 'G-8P77FKRNCT',
  );
}