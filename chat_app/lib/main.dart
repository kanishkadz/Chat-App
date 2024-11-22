import 'package:chat_app/auth/auth_gate.dart';
import 'package:chat_app/auth/login_or_register.dart';
import 'package:chat_app/themes/light_mode.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';

void main() async {

  WidgetsFlutterBinding.ensureInitialized();

  if(kIsWeb){
    await Firebase.initializeApp(
    options: FirebaseOptions(
    apiKey: "AIzaSyAuw0546RCmuCltu1OxrRLS8ZRPX8E-E2A",
    authDomain: "chatapp-3d53a.firebaseapp.com",
    projectId: "chatapp-3d53a",
    storageBucket: "chatapp-3d53a.firebasestorage.app",
    messagingSenderId: "1003871269572",
    appId: "1:1003871269572:web:ce4d96b4d2569ac8fbcf91",
    measurementId: "G-1C6J174G70"
  ));
  } else {
    await Firebase.initializeApp();
  }
  
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const AuthGate(),
      theme: lightMode,
    );
  }
}
