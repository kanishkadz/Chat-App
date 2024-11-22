class AuthService {

  //instance or auth
  final FirebaseAuth _auth = FirebaseAuth.instance;

  //sign in
  Future<UserCredential> signInWithEmailPassword(String email, password) async {
    try{
      UserCredential userCredential = await _auth.signInWithEmailPassword(email: email, passowrd: password,);
      return userCredential;
    } on FirebaseAuthException catch (e) {
      throw Exception(e.code);
    }
  }

  //sign up

  //sign out
}