import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

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
    apiKey: 'AIzaSyAfs6fqB4V6W31a4bBnPI_4MeZFF7m5zmo',
    appId: '1:708923225544:web:d172652a65d8fc7e01bcfd',
    messagingSenderId: '708923225544',
    projectId: 'quikart-29573',
    authDomain: 'quikart-29573.firebaseapp.com',
    storageBucket: 'quikart-29573.appspot.com',
    measurementId: 'G-CFTDBSQH6J',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyClzi-yp-UwxC69j4KqYHq2NgF_lAUU9Zk',
    appId: '1:708923225544:android:635ef8464580f05501bcfd',
    messagingSenderId: '708923225544',
    projectId: 'quikart-29573',
    storageBucket: 'quikart-29573.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBEW0dhUEJY7kGIcamCdYDoX6SOvRAUw2E',
    appId: '1:708923225544:ios:bd998243cbb675db01bcfd',
    messagingSenderId: '708923225544',
    projectId: 'quikart-29573',
    storageBucket: 'quikart-29573.appspot.com',
    iosClientId: '708923225544-bjogve48ddor9687e8qfpi1a81vbuu0d.apps.googleusercontent.com',
    iosBundleId: 'com.quikartsapplication.app',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBEW0dhUEJY7kGIcamCdYDoX6SOvRAUw2E',
    appId: '1:708923225544:ios:5ec0ed576182658301bcfd',
    messagingSenderId: '708923225544',
    projectId: 'quikart-29573',
    storageBucket: 'quikart-29573.appspot.com',
    iosClientId: '708923225544-9tpm8btcdvdtc8ga7vgf9mo6b2ang2p9.apps.googleusercontent.com',
    iosBundleId: 'com.quikartsapplication.testApp',
  );
}
