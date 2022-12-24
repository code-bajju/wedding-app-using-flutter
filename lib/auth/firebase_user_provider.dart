import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class WeddingAppFirebaseUser {
  WeddingAppFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

WeddingAppFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<WeddingAppFirebaseUser> weddingAppFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<WeddingAppFirebaseUser>(
      (user) {
        currentUser = WeddingAppFirebaseUser(user);
        return currentUser!;
      },
    );
