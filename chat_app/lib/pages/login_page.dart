import 'package:chat_app/components/my_textfield.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //logo
            Icon(
              Icons.message,
              size: 60,
              color: Theme.of(context).colorScheme.primary,
            ),

            const SizedBox(height: 50),
        
            //welcome back message
            Text(
              "Welcome back, we missed you !!",
              style: TextStyle(
                color: Theme.of(context).colorScheme.primary,
                fontSize: 16,
                ),
            ),

            const SizedBox(height: 25),
        
            //email textfield
            MyTextField(
              hintText: "Email",
            ),
            
            const SizedBox(height: 10),

            MyTextField(
              hintText: "Password",
            ),
        
            //pw textfield
        
            //login button
        
            //register now
          ],
        ),
      ),
    );
  }
}