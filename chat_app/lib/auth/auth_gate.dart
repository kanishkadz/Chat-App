import 'package:chat_app/auth/login_or_register.dart';
import 'package:chat_app/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthGate extends StatelessWidget {
  const AuthGate({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(), 
        builder: (context, snapshot) {
          //user is logged in
          if(snapshot.hasData){
            return const HomePage();
          }

          //user is not logged in
          else{
            return const LoginOrRegister();
          }
        }
      ),
    );
  }
}