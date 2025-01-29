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
        return linux;
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyDNsHQAYkucQT3R0PWVJSp1i9n_DCkvbo8',
    appId: '1:787456506208:web:b3115fcb13b2bfd6d48605',
    messagingSenderId: '787456506208',
    projectId: 'instacrap-clone',
    authDomain: 'instacrap-clone.firebaseapp.com',
    storageBucket: 'instacrap-clone.firebasestorage.app',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyB9A5QGj3Kb3iaKrvyPfaiD8Tf9B6G2Eus',
    appId: '1:787456506208:android:384f2596b52a6289d48605',
    messagingSenderId: '787456506208',
    projectId: 'instacrap-clone',
    storageBucket: 'instacrap-clone.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAjj0VAojG_slT01MS5FaRLbEsVWuFRjX4',
    appId: '1:787456506208:ios:f887248ffb2eb1cbd48605',
    messagingSenderId: '787456506208',
    projectId: 'instacrap-clone',
    storageBucket: 'instacrap-clone.firebasestorage.app',
    iosBundleId: 'z1nl0x.corp.instacrapClone',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAjj0VAojG_slT01MS5FaRLbEsVWuFRjX4',
    appId: '1:787456506208:ios:f887248ffb2eb1cbd48605',
    messagingSenderId: '787456506208',
    projectId: 'instacrap-clone',
    storageBucket: 'instacrap-clone.firebasestorage.app',
    iosBundleId: 'z1nl0x.corp.instacrapClone',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyDNsHQAYkucQT3R0PWVJSp1i9n_DCkvbo8',
    appId: '1:787456506208:web:f0a9c801c978426ed48605',
    messagingSenderId: '787456506208',
    projectId: 'instacrap-clone',
    authDomain: 'instacrap-clone.firebaseapp.com',
    storageBucket: 'instacrap-clone.firebasestorage.app',
  );

  static const FirebaseOptions linux = FirebaseOptions(
    apiKey: 'AIzaSyDNsHQAYkucQT3R0PWVJSp1i9n_DCkvbo8',
    appId: '1:787456506208:web:a48b2d1648dbfbf5d48605',
    messagingSenderId: '787456506208',
    projectId: 'instacrap-clone',
    authDomain: 'instacrap-clone.firebaseapp.com',
    storageBucket: 'instacrap-clone.firebasestorage.app',
  );
}
