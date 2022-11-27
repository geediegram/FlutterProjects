import 'package:coffee_shop/models/user.dart';
import 'package:coffee_shop/services/database.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthService {

//   final FirebaseAuth _auth = FirebaseAuth.instance;
//
//   //Function to create user object based on firebase user
//   MyUser? _userFromFirebaseUser(User? user) {
//       return user != null ? MyUser(uid: user.uid, isAnonymous: user.isAnonymous) : null;
//   }
//
//   //Auth change user stream
//   Stream<MyUser?> get user {
//     return _auth.authStateChanges()
//         .map(_userFromFirebaseUser);
//         // .map((User? user) => _userFromFirebaseUser(user));
//   }
//
//   // //Method to sign in Anonymously
//   // Future signInAnon() async {
//   //     try{
//   //      UserCredential result = await _auth.signInAnonymously();
//   //      User? user = result.user;
//   //      return _userFromFirebaseUser(user);
//   //     } catch(e) {
//   //       print(e.toString());
//   //       return null;
//   //     }
//   // }
//
//   //Method to sign in with Email and Password
//   Future<MyUser?> signInWithEmailAndPassword(String email, String password) async {
//     try{
//       UserCredential result = await _auth.signInWithEmailAndPassword(email: email, password: password);
//       User? user = result.user;
//       return _userFromFirebaseUser(user);
//     } catch (e) {
//       print(e.toString());
//       return null;
//     }
//   }
//
//   //Method Register with email and password
//   Future registerWithEmailAndPassword(String email, String password) async {
//     try {
//       UserCredential result = await _auth.createUserWithEmailAndPassword(email: email, password: password);
//       User? user = result.user;
//
//       //create a document for the user with the userId
//       await DatabaseService(uid: user!.uid ).updateUserData('John Doe', '0', 70, 2);
//       return _userFromFirebaseUser(user);
//     } catch (e) {
//       print(e.toString());
//       return null;
//     }
//   }
//
//   //Sign Out
//   Future signOutUser() async {
//     try{
//       return await _auth.signOut();
//     } catch (e) {
//       print(e.toString());
//       return null;
//     }
// }

}