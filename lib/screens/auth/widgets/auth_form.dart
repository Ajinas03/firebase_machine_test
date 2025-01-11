import 'package:flutter/material.dart';
import 'package:firebase_machine_test/screens/common_widgets/custom_button.dart';

class AuthForm extends StatelessWidget {
  final bool isLogin;
  final VoidCallback onSubmit;

  const AuthForm({
    super.key,
    this.isLogin = true,
    required this.onSubmit,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextFormField(
            decoration: const InputDecoration(
              labelText: 'Email',
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 16),
          TextFormField(
            decoration: const InputDecoration(
              labelText: 'Password',
              border: OutlineInputBorder(),
            ),
            obscureText: true,
          ),
          const SizedBox(height: 24),
          CustomButton(
            text: isLogin ? 'Login' : 'Register',
            onPressed: onSubmit,
          ),
        ],
      ),
    );
  }
}