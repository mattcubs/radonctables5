import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCP9e_kOHDkaLBg627OIArcUeZGebJbU9k",
            authDomain: "oneonc-4b56b.firebaseapp.com",
            projectId: "oneonc-4b56b",
            storageBucket: "oneonc-4b56b.appspot.com",
            messagingSenderId: "194514958379",
            appId: "1:194514958379:web:f1e8e02b7f8cb35398d26e",
            measurementId: "G-E2Q27TL4XN"));
  } else {
    await Firebase.initializeApp();
  }
}
