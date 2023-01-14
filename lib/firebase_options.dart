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
    apiKey: 'AIzaSyD88SBnf7hE9Vov06uVmtLFnKN2wBy_Sxw',
    appId: '1:1019206821971:web:e9be17c4ff53d7b374fea6',
    messagingSenderId: '1019206821971',
    projectId: 'aravinds-cools-project',
    authDomain: 'aravinds-cools-project.firebaseapp.com',
    storageBucket: 'aravinds-cools-project.appspot.com',
    measurementId: 'G-BMQSN60D57',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBCOsaCJnZzgyC6ZoCyULmfvJBhVI_T9qY',
    appId: '1:1019206821971:android:3feb143cbf481f9474fea6',
    messagingSenderId: '1019206821971',
    projectId: 'aravinds-cools-project',
    storageBucket: 'aravinds-cools-project.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDKcDUkJInOPl0NHeSUQBIyaiPlFqzWcNU',
    appId: '1:1019206821971:ios:6228e17e78c7c37b74fea6',
    messagingSenderId: '1019206821971',
    projectId: 'aravinds-cools-project',
    storageBucket: 'aravinds-cools-project.appspot.com',
    iosClientId: '1019206821971-dkurppjh6qj9dukfq4r2p6kpem643lot.apps.googleusercontent.com',
    iosBundleId: 'com.example.learnn',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDKcDUkJInOPl0NHeSUQBIyaiPlFqzWcNU',
    appId: '1:1019206821971:ios:6228e17e78c7c37b74fea6',
    messagingSenderId: '1019206821971',
    projectId: 'aravinds-cools-project',
    storageBucket: 'aravinds-cools-project.appspot.com',
    iosClientId: '1019206821971-dkurppjh6qj9dukfq4r2p6kpem643lot.apps.googleusercontent.com',
    iosBundleId: 'com.example.learnn',
  );
}
