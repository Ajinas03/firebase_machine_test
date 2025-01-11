import 'package:flutter/material.dart';
import 'package:firebase_machine_test/screens/auth/widgets/auth_form.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:firebase_machine_test/logic/navigation/navigation_bloc.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AuthForm(
                isLogin: true,
                onSubmit: () {
                  // Handle login
                  context.read<NavigationBloc>().add(ChangeScreen(scrnNum: 2)); // Navigate to dashboard
                },
              ),
              TextButton(
                onPressed: () {
                  context.read<NavigationBloc>().add(ChangeScreen(scrnNum: 1)); // Navigate to register
                },
                child: const Text('Don\'t have an account? Register'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}