import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCNYqrsVevAhUAMOBNaluHSphDudL5ZFOI",
            authDomain: "c-rtp-faa1c.firebaseapp.com",
            projectId: "c-rtp-faa1c",
            storageBucket: "c-rtp-faa1c.appspot.com",
            messagingSenderId: "1086084006434",
            appId: "1:1086084006434:web:8a19e19eb81a441f96007b",
            measurementId: "G-H8DXV6BGY2"));
  } else {
    await Firebase.initializeApp();
  }
}
