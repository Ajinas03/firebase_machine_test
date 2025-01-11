import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:firebase_machine_test/config/theme/app_theme.dart';
import 'package:firebase_machine_test/logic/theme/theme_cubit.dart';
import 'package:firebase_machine_test/logic/navigation/navigation_bloc.dart';
import 'package:firebase_machine_test/screens/auth/login_screen.dart';
import 'package:firebase_machine_test/screens/auth/register_screen.dart';
import 'package:firebase_machine_test/screens/dashboard/dashboard_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => ThemeCubit()),
        BlocProvider(create: (context) => NavigationBloc()),
      ],
      child: BlocBuilder<ThemeCubit, ThemeMode>(
        builder: (context, themeMode) {
          return MaterialApp(
            title: 'Firebase Machine Test',
            theme: AppTheme.lightTheme,
            darkTheme: AppTheme.darkTheme,
            themeMode: themeMode == ThemeMode.light
                ? ThemeMode.light
                : ThemeMode.dark,
            home: BlocBuilder<NavigationBloc, NavigationState>(
              builder: (context, state) {
                switch (state.currentScreen) {
                  case 0:
                    return const LoginScreen();
                  case 1:
                    return const RegisterScreen();
                  case 2:
                    return const DashboardScreen();
                  default:
                    return const LoginScreen();
                }
              },
            ),
          );
        },
      ),
    );
  }
}