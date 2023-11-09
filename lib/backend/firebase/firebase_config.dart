import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCbMW144Rx-6cqu0hdzjp8zfO1cH8p2DPs",
            authDomain: "chef-copilot.firebaseapp.com",
            projectId: "chef-copilot",
            storageBucket: "chef-copilot.appspot.com",
            messagingSenderId: "316236883019",
            appId: "1:316236883019:web:9c2672ee5b0103059159ce",
            measurementId: "G-PQYJ2EB31J"));
  } else {
    await Firebase.initializeApp();
  }
}
