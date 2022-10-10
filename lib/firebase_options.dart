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
    apiKey: 'AIzaSyCthYxoXQYM7MprLIhpLYyMljRSj77MDVM',
    appId: '1:278140333975:web:e54f1bb2136ab35cc15ed2',
    messagingSenderId: '278140333975',
    projectId: 'selll-out',
    authDomain: 'selll-out.firebaseapp.com',
    storageBucket: 'selll-out.appspot.com',
    measurementId: 'G-XZRYK4EP5K',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCA53ztuE-Kq42RRPRn5t1FyjGK7DbXi2k',
    appId: '1:278140333975:android:e7435304116e5229c15ed2',
    messagingSenderId: '278140333975',
    projectId: 'selll-out',
    storageBucket: 'selll-out.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAi4HhXdp588NStFEXY-AliD_QcCe0ox5I',
    appId: '1:278140333975:ios:9dff72ecf29381bec15ed2',
    messagingSenderId: '278140333975',
    projectId: 'selll-out',
    storageBucket: 'selll-out.appspot.com',
    androidClientId: '278140333975-bgj1fkp2d5684f935s4fg7sm6svdqjg4.apps.googleusercontent.com',
    iosClientId: '278140333975-u1bfris55s29kg646ip6gr8g4qe7215o.apps.googleusercontent.com',
    iosBundleId: 'com.selllout.selloutWebLanding',
  );
}
