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
      throw UnsupportedError(
        'DefaultFirebaseOptions have not been configured for web - '
        'you can reconfigure this by running the FlutterFire CLI again.',
      );
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

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCgP7CxFJvUJdlAsn35EQE_A49lsY847CM',
    appId: '1:172301341605:android:644251c3deb0780f6d4e4c',
    messagingSenderId: '172301341605',
    projectId: 'soccer-26ab6',
    databaseURL: 'https://soccer-26ab6-default-rtdb.europe-west1.firebasedatabase.app',
    storageBucket: 'soccer-26ab6.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAQLzwSo1xE_3X7-mEfpkmBkCgBbSf0-qk',
    appId: '1:172301341605:ios:65ab361dcd823f196d4e4c',
    messagingSenderId: '172301341605',
    projectId: 'soccer-26ab6',
    databaseURL: 'https://soccer-26ab6-default-rtdb.europe-west1.firebasedatabase.app',
    storageBucket: 'soccer-26ab6.appspot.com',
    iosClientId: '172301341605-42208o9m7ttgkrqrp466a4dhnm571dp4.apps.googleusercontent.com',
    iosBundleId: 'com.batu.terzi',
  );
}
