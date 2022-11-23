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
    apiKey: 'AIzaSyC-xunWgqbop2oRSPBYiskhE7d0STeoePs',
    appId: '1:446872587928:web:19a34cca6f44a22f318aed',
    messagingSenderId: '446872587928',
    projectId: 'softranca',
    authDomain: 'softranca.firebaseapp.com',
    databaseURL: 'https://softranca-default-rtdb.firebaseio.com',
    storageBucket: 'softranca.appspot.com',
    measurementId: 'G-QXSBR0CP26',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyB1dS5HdumQc7U24FbIa6ncw_5TTE-MLT4',
    appId: '1:446872587928:android:f792cd3e39e26048318aed',
    messagingSenderId: '446872587928',
    projectId: 'softranca',
    databaseURL: 'https://softranca-default-rtdb.firebaseio.com',
    storageBucket: 'softranca.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCvrp-AYmmNWaVlEKMRBBZh87l3rAO-jfE',
    appId: '1:446872587928:ios:8b80bad7ea2b47c6318aed',
    messagingSenderId: '446872587928',
    projectId: 'softranca',
    databaseURL: 'https://softranca-default-rtdb.firebaseio.com',
    storageBucket: 'softranca.appspot.com',
    iosClientId: '446872587928-tfs94c3ngtt8g350gk7u06k6ec499edl.apps.googleusercontent.com',
    iosBundleId: 'com.example.softrancaApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCvrp-AYmmNWaVlEKMRBBZh87l3rAO-jfE',
    appId: '1:446872587928:ios:8b80bad7ea2b47c6318aed',
    messagingSenderId: '446872587928',
    projectId: 'softranca',
    databaseURL: 'https://softranca-default-rtdb.firebaseio.com',
    storageBucket: 'softranca.appspot.com',
    iosClientId: '446872587928-tfs94c3ngtt8g350gk7u06k6ec499edl.apps.googleusercontent.com',
    iosBundleId: 'com.example.softrancaApp',
  );
}
