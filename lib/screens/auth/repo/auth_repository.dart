import 'package:firebase_auth/firebase_auth.dart';

class AuthRepository {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<UserCredential> signIn(String email, String password) {
    return _auth.signInWithEmailAndPassword(email: email, password: password);
  }

  Future<UserCredential> signUp(String email, String password) {
    return _auth.createUserWithEmailAndPassword(email: email, password: password);
  }

  Future<void> signOut() => _auth.signOut();
  
  Future<void> resetPassword(String email) => _auth.sendPasswordResetEmail(email: email);
  
  Future<void> updateProfile({String? displayName, String? photoURL}) {
    return _auth.currentUser!.updateProfile(
      displayName: displayName,
      photoURL: photoURL,
    );
  }

  Stream<User?> get authStateChanges => _auth.authStateChanges();
}