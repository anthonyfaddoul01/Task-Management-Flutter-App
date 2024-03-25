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
    apiKey: 'AIzaSyC950wI5yUh3FcV-eIpWeJ6hj729yuyAno',
    appId: '1:211249284415:web:0d8295d0b93c49854abf8a',
    messagingSenderId: '211249284415',
    projectId: 'pelagic-pathway-405911',
    authDomain: 'pelagic-pathway-405911.firebaseapp.com',
    storageBucket: 'pelagic-pathway-405911.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBjlSwOacqQS3pfhxLDyXprN2HDTOiNulY',
    appId: '1:211249284415:android:0ac011c15dc5fed34abf8a',
    messagingSenderId: '211249284415',
    projectId: 'pelagic-pathway-405911',
    storageBucket: 'pelagic-pathway-405911.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCx9eWFCj0_lME725YVtRG2iTh5LKAZ-Cw',
    appId: '1:211249284415:ios:e929c31cd8b85f394abf8a',
    messagingSenderId: '211249284415',
    projectId: 'pelagic-pathway-405911',
    storageBucket: 'pelagic-pathway-405911.appspot.com',
    iosBundleId: 'com.example.flutterproject2',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCx9eWFCj0_lME725YVtRG2iTh5LKAZ-Cw',
    appId: '1:211249284415:ios:f03ed7a997d875e44abf8a',
    messagingSenderId: '211249284415',
    projectId: 'pelagic-pathway-405911',
    storageBucket: 'pelagic-pathway-405911.appspot.com',
    iosBundleId: 'com.example.flutterproject2.RunnerTests',
  );
}
