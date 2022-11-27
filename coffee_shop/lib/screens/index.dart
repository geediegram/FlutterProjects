import 'package:coffee_shop/models/user.dart';
import 'package:coffee_shop/screens/wrapper.dart';
import 'package:coffee_shop/services/auth_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PreHomeScreen extends StatefulWidget {
  const PreHomeScreen({Key? key}) : super(key: key);

  @override
  State<PreHomeScreen> createState() => _PreHomeScreenState();
}

class _PreHomeScreenState extends State<PreHomeScreen> {

  bool loading = false;

  @override
  Widget build(BuildContext context) {
    return StreamProvider<MyUser?>.value(
      initialData: null,
      value: AuthService().user,
      child: Scaffold(
        backgroundColor: const Color(0xFFC99864),
        body: Center(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(10.0, 60.0, 10.0, 0),
                child: Text('Seuns Coffee',
                style: TextStyle(
                  fontSize: 38.0,
                  fontWeight: FontWeight.w600,
                  color: Colors.brown[900],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10.0, 0, 10.0, 0),
                child: Image.asset(
                    'assets/hot_coffee_amico.png',
                  width: 300,
                  height: 300,
                ),
              ),
              SizedBox(height: 40.0),
              Padding(
                padding: const EdgeInsets.fromLTRB(40.0, 0, 40.0, 0),
                child: Text(
                    'Get more than an energy boost. Start your day right.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Colors.brown[800],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(30.0, 20.0, 30.0, 0),
                child: Text(
                    'The best grain, the finest roast, the most powerful flavour',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color: Colors.brown[600],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(30.0, 50.0, 30.0, 0),
                child: ButtonTheme(
                  height: 70.0,
                  minWidth: 250.0,
                  child: RaisedButton(
                      onPressed: () {
                        Navigator.pushReplacementNamed(context, '/wrap');
                      },
                    color: Colors.grey[800],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50.0)
                    ),
                    child: Text(
                      'Get Started',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
