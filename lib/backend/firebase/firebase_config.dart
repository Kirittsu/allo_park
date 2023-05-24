import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyASSDKlkj4OD7dw-pEJUs3WbNugg5fQOOs",
            authDomain: "allopark-81d0a.firebaseapp.com",
            projectId: "allopark-81d0a",
            storageBucket: "allopark-81d0a.appspot.com",
            messagingSenderId: "277709952366",
            appId: "1:277709952366:web:e9e1ae32a40e1bb3d4dd7f",
            measurementId: "G-5WT6ZFXE7V"));
  } else {
    await Firebase.initializeApp();
  }
}
