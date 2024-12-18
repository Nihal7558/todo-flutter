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
    apiKey: 'AIzaSyAPYhTivYqTezs7xEitRyXNsRJp2Zgm1II',
    appId: '1:359185616056:web:99540ca397994e8619384d',
    messagingSenderId: '359185616056',
    projectId: 'todo-7c641',
    authDomain: 'todo-7c641.firebaseapp.com',
    storageBucket: 'todo-7c641.firebasestorage.app',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAH4SA6VZH19bw3Bx4gLzZXoOVmPLFPiVY',
    appId: '1:359185616056:android:be290b245b04a14119384d',
    messagingSenderId: '359185616056',
    projectId: 'todo-7c641',
    storageBucket: 'todo-7c641.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAzZSkHnjdb1ojxfLy_TIeZDJDMwpTSfs4',
    appId: '1:359185616056:ios:f0987b7de31ab17319384d',
    messagingSenderId: '359185616056',
    projectId: 'todo-7c641',
    storageBucket: 'todo-7c641.firebasestorage.app',
    iosBundleId: 'com.example.toDoApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAzZSkHnjdb1ojxfLy_TIeZDJDMwpTSfs4',
    appId: '1:359185616056:ios:f0987b7de31ab17319384d',
    messagingSenderId: '359185616056',
    projectId: 'todo-7c641',
    storageBucket: 'todo-7c641.firebasestorage.app',
    iosBundleId: 'com.example.toDoApp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyAPYhTivYqTezs7xEitRyXNsRJp2Zgm1II',
    appId: '1:359185616056:web:31c929893f599f3e19384d',
    messagingSenderId: '359185616056',
    projectId: 'todo-7c641',
    authDomain: 'todo-7c641.firebaseapp.com',
    storageBucket: 'todo-7c641.firebasestorage.app',
  );
}