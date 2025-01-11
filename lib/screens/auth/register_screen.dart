import 'package:flutter/material.dart';
import 'package:firebase_machine_test/screens/auth/widgets/auth_form.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:firebase_machine_test/logic/navigation/navigation_bloc.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Register'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            context.read<NavigationBloc>().add(ChangeScreen(scrnNum: 0));
          },
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: AuthForm(
            isLogin: false,
            onSubmit: () {
              // Handle registration
              context.read<NavigationBloc>().add(ChangeScreen(scrnNum: 2)); // Navigate to dashboard
            },
          ),
        ),
      ),
    );
  }
}