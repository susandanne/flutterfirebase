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
    apiKey: 'AIzaSyBLdJUUSH7k0jeOaLk75w98-SkCIuVBLhc',
    appId: '1:715550817364:web:b8315251b8cf2fcc8ac1c1',
    messagingSenderId: '715550817364',
    projectId: 'fluttertask-d45b7',
    authDomain: 'fluttertask-d45b7.firebaseapp.com',
    storageBucket: 'fluttertask-d45b7.appspot.com',
    measurementId: 'G-R8QMVLZTYB',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDXvN8vHC_D08srr5G1dz5zD477yW0p2rk',
    appId: '1:715550817364:android:001d1302f75a71b58ac1c1',
    messagingSenderId: '715550817364',
    projectId: 'fluttertask-d45b7',
    storageBucket: 'fluttertask-d45b7.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyA6mW3ta7mccKSB_D3-vDrIVzWOo2TSbcI',
    appId: '1:715550817364:ios:220ee70131a54be38ac1c1',
    messagingSenderId: '715550817364',
    projectId: 'fluttertask-d45b7',
    storageBucket: 'fluttertask-d45b7.appspot.com',
    iosClientId: '715550817364-3mev37mnojh7vjkk9fcek25b29qp2lic.apps.googleusercontent.com',
    iosBundleId: 'com.example.flutterfirebase',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyA6mW3ta7mccKSB_D3-vDrIVzWOo2TSbcI',
    appId: '1:715550817364:ios:220ee70131a54be38ac1c1',
    messagingSenderId: '715550817364',
    projectId: 'fluttertask-d45b7',
    storageBucket: 'fluttertask-d45b7.appspot.com',
    iosClientId: '715550817364-3mev37mnojh7vjkk9fcek25b29qp2lic.apps.googleusercontent.com',
    iosBundleId: 'com.example.flutterfirebase',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyBLdJUUSH7k0jeOaLk75w98-SkCIuVBLhc',
    appId: '1:715550817364:web:90e7e7f80fc613ef8ac1c1',
    messagingSenderId: '715550817364',
    projectId: 'fluttertask-d45b7',
    authDomain: 'fluttertask-d45b7.firebaseapp.com',
    storageBucket: 'fluttertask-d45b7.appspot.com',
    measurementId: 'G-CJ0V3SNX42',
  );

}