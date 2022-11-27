import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:coffee_shop/models/coffee.dart';
import 'package:coffee_shop/models/user.dart';

class DatabaseService {

  final String uid;

  DatabaseService({required this.uid});

  final CollectionReference coffeeCollection = FirebaseFirestore.instance.collection('coffee');

  Future updateUserData (String name, String sugar, int strength, int cups) async {

    return await coffeeCollection.doc(uid).set({
      'name': name,
      'sugar': sugar,
      'strength': strength,
      'cups': cups,
    });
  }

  //coffee list from snapshot
  List<Coffee> _coffeeListFomSnapshot (QuerySnapshot snapshot) {
    return snapshot.docs.map((doc) {
      return Coffee(
          name: doc['name'],
          sugar: doc['sugar'] ?? '0',
          strength: doc['strength'] ?? 0,
          cups: doc['cups'] ?? 0,
      );
    }).toList();
  }

  MyUserData _myUserDataFromSnapshots (DocumentSnapshot snapshot) {
    return MyUserData(
        uid: uid,
        name: snapshot['name'],
        sugar: snapshot['sugar'],
        cups: snapshot['cups'],
        strength: snapshot['strength'],
    );
  }

  //get coffee stream
  Stream<List<Coffee>> get coffee {
    return coffeeCollection.snapshots()
        .map(_coffeeListFomSnapshot);
  }

  //get user document stream
  Stream<MyUserData> get userData {
    return coffeeCollection.doc(uid).snapshots()
        .map(_myUserDataFromSnapshots);
  }
}