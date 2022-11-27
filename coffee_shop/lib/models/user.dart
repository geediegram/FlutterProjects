
class MyUser {

  final String uid;
  final bool isAnonymous;

  MyUser({required this.uid, required this.isAnonymous});

}

class MyUserData {

  final String uid;
  final String name;
  final String sugar;
  final String cups;
  final int strength;

  MyUserData ({required this.uid, required this.name,
    required this.sugar, required this.cups, required this.strength});
}