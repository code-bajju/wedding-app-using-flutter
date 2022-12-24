import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyDDI4Rf_rjaqgnvPxrhFjt1GagME3jkNek",
            authDomain: "weddingapp-cda59.firebaseapp.com",
            projectId: "weddingapp-cda59",
            storageBucket: "weddingapp-cda59.appspot.com",
            messagingSenderId: "373594204426",
            appId: "1:373594204426:web:2005e8ca171c377f2632f3",
            measurementId: "G-W307BMD78L"));
  } else {
    await Firebase.initializeApp();
  }
}
