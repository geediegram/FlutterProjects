import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:coffee_shop/screens/home/settings_form.dart';
import 'package:coffee_shop/services/auth_service.dart';
import 'package:coffee_shop/services/database.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:coffee_shop/screens/home/coffee_list.dart';
import '../../models/coffee.dart';

class Home extends StatelessWidget {
  // const Home({Key? key}) : super(key: key);

  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {

    void _showSettingsPanel() {
      showModalBottomSheet(context: context, builder: (context) {
          return Container(
            padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 60.0),
            child: SettingsForm(),
          );
      });
    }

    return StreamProvider<List<Coffee>>.value(
      initialData: const [],
      catchError: (_,__) => [],
      value: DatabaseService(uid: '').coffee,
      child: Scaffold(
        backgroundColor: Colors.brown[200],
        appBar: AppBar(
          title: Text('Seuns Coffee Shop'),
          backgroundColor: Colors.brown[800],
          elevation: 1.0,
          actions: <Widget>[
              FlatButton.icon(
                  onPressed: () async {
                    await _auth.signOutUser();
                  },
                  icon: Icon(Icons.person),
                  label: Text(
                    'Sign Out',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
              ),
              FlatButton.icon(
                onPressed: () => _showSettingsPanel(),
                icon: Icon(Icons.settings),
                label: Text(
                  'Settings',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
          ],
        ),
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/coffee_bg.png'),
              fit: BoxFit.cover,
            )
          ),
          child: CoffeeList()
        ),
      ),
    );
  }
}
