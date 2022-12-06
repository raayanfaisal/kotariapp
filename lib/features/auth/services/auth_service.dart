import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Stream<User?> get user {
    return _auth.authStateChanges();
  }

  // Register with full name, email and password
  Future registerWithEmailAndPassword(
    String displayName,
    String email,
    String password,
  ) async {
    try {
      final credential = await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      User? user = credential.user;
      user!.updateDisplayName(displayName);
      return user;
    } on FirebaseAuthException catch (e) {
      // if (e.code == 'weak-password') {
      //   print('The password provided is too weak.');
      // } else if (e.code == 'email-already-in-use') {
      //   print('The account already exists for that email.');
      // }
      print(e.message);
      return e.message;
    } catch (e) {
      print(e);
      return e;
    }
  }

  // Login with email and password
  Future loginWithEmailAndPassword(String email, String password) async {
    try {
      final credential = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      User? user = credential.user;
      return user;
    } on FirebaseAuthException catch (e) {
      print(e.message);
      return e.message;
    } catch (e) {
      print(e);
      return e;
    }
  }

  // Logout
  Future logout() async {
    try {
      return await _auth.signOut();
    } catch (e) {
      print(e);
      return e;
    }
  }
}
