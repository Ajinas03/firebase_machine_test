import 'package:go_router/go_router.dart';
import 'package:firebase_machine_test/screens/auth/login_screen.dart';
import 'package:firebase_machine_test/screens/auth/register_screen.dart';
import 'package:firebase_machine_test/screens/dashboard/dashboard_screen.dart';

class AppRouter {
  static final router = GoRouter(
    initialLocation: '/login',
    routes: [
      GoRoute(
        path: '/login',
        builder: (context, state) => const LoginScreen(),
      ),
      GoRoute(
        path: '/register',
        builder: (context, state) => const RegisterScreen(),
      ),
      GoRoute(
        path: '/dashboard',
        builder: (context, state) => const DashboardScreen(),
      ),
    ],
  );
}