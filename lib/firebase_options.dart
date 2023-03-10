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
    apiKey: 'AIzaSyChsjbCAjWLndikUQVtSRLiC6KGDx4k-zs',
    appId: '1:628864174209:web:ec53b535a0482d1ee3a580',
    messagingSenderId: '628864174209',
    projectId: 'marcelowczarek',
    authDomain: 'marcelowczarek.firebaseapp.com',
    storageBucket: 'marcelowczarek.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCwhDWiy9AZfMbpwxnAdrHq803MT8-iZzo',
    appId: '1:628864174209:android:1906033b123ac8dde3a580',
    messagingSenderId: '628864174209',
    projectId: 'marcelowczarek',
    storageBucket: 'marcelowczarek.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDBJKvRmz_ZjIIqaKrcjecFabDmOTFygMw',
    appId: '1:628864174209:ios:6f7b45305e25843ee3a580',
    messagingSenderId: '628864174209',
    projectId: 'marcelowczarek',
    storageBucket: 'marcelowczarek.appspot.com',
    iosClientId: '628864174209-qgnjf1aor2fl085bmkfjla4q18bebtv5.apps.googleusercontent.com',
    iosBundleId: 'com.marcelowczarek.ownWebsite',
  );
}
