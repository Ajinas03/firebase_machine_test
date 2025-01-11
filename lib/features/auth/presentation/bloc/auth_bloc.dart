// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:equatable/equatable.dart';
// import 'package:task_manager/features/auth/domain/repositories/auth_repository.dart';

// part 'auth_event.dart';
// part 'auth_state.dart';

// class AuthBloc extends Bloc<AuthEvent, AuthState> {
//   final AuthRepository _authRepository;

//   AuthBloc({required AuthRepository authRepository})
//       : _authRepository = authRepository,
//         super(AuthInitial()) {
//     on<SignInRequested>(_onSignInRequested);
//     on<SignUpRequested>(_onSignUpRequested);
//     on<SignOutRequested>(_onSignOutRequested);
//   }

//   Future<void> _onSignInRequested(
//     SignInRequested event,
//     Emitter<AuthState> emit,
//   ) async {
//     emit(AuthLoading());
//     try {
//       await _authRepository.signIn(event.email, event.password);
//       emit(AuthSuccess());
//     } catch (e) {
//       emit(AuthError(e.toString()));
//     }
//   }

//   // Implement other event handlers
// }