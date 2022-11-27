import 'package:coffee_shop/models/user.dart';
import 'package:coffee_shop/services/database.dart';
import 'package:coffee_shop/shared/loading.dart';
import 'package:coffee_shop/shared/sugar_constant.dart';
import 'package:flutter/material.dart';
import 'package:coffee_shop/shared/text_constant.dart';
import 'package:coffee_shop/shared/password_constant.dart';
import 'package:provider/provider.dart';

class SettingsForm extends StatefulWidget {
  const SettingsForm({Key? key}) : super(key: key);

  @override
  State<SettingsForm> createState() => _SettingsFormState();
}

class _SettingsFormState extends State<SettingsForm> {

  final _formKey = GlobalKey<FormState>();
  final List<String> sugars = ['0', '2', '4', '6', '8', '10'];
  final List<int> cups = [0, 2, 4, 6, 8, 10];


  //form values
  String? _currentName = '';
  String? _currentSugars = '0';
  int? _currentStrength = 0;
  int? _currentCups = 0;

  @override
  Widget build(BuildContext context) {

    final user = Provider.of<MyUser?>(context);

    return StreamBuilder<MyUserData>(
      stream: DatabaseService(uid: user!.uid).userData,
      builder: (context, snapshot) {
        if(snapshot.hasData) {
          MyUserData? myUserData = snapshot.data;
            return Form(
              key: _formKey,
              child: Column(
                children: <Widget>[
                  Text(
                    'Update coffee settings',
                    style: TextStyle(
                      fontSize: 18.0,
                    ),
                  ),
                  SizedBox(height: 20.0),
                  TextFormField(
                    initialValue: myUserData?.name,
                    decoration: textInputDecoration,
                    validator: (value) => value?.isEmpty ?? true ? 'Please enter a name' : null,
                    onChanged: (value) => setState(() => _currentName = value),
                  ),
                  SizedBox(height: 20.0),
                  //dropdown
                  DropdownButtonFormField(
                    decoration: sugarInputDecoration,
                    value: _currentSugars ,
                    items: sugars.map((sugar) {
                      return DropdownMenuItem(
                        value: sugar,
                        child: Text('$sugar sugars'),
                      );
                    }).toList(),
                    onChanged: (String? value) {
                      setState(() {
                        _currentSugars = value!;
                      });
                    },
                  ),
                  Slider(
                    value: (_currentStrength )!.toDouble(),
                    activeColor: Colors.brown[_currentStrength!],
                    inactiveColor: Colors.brown[_currentStrength!],
                    thumbColor: Colors.brown,
                    min: 0,
                    max: 900,
                    divisions: 9,
                    onChanged: (value) => setState(() {
                      _currentStrength = value.round();
                    }),
                  ),
                  DropdownButtonFormField(
                    decoration: sugarInputDecoration,
                    value: _currentCups ,
                    items: cups.map((cup) {
                      return DropdownMenuItem(
                        value: cup,
                        child: Text('$cup cups'),
                      );
                    }).toList(),
                    onChanged: (int? value) {
                      setState(() {
                        _currentCups = value!;
                      });
                    },
                  ),
                  RaisedButton(
                    color: Colors.brown[800],
                    onPressed: () async {
                      if (_formKey.currentState!.validate()) {
                        await DatabaseService(uid: user.uid).updateUserData(
                            _currentName ?? snapshot.data!.name,
                            _currentSugars ?? snapshot.data!.sugar,
                            _currentStrength ?? snapshot.data!.strength,
                            _currentCups!,
                        );
                        Navigator.pop(context);
                      }
                    },
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)
                    ),
                    child: const Text(
                      'Update',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              ),
            );
        } else {
          return Container();
        }

      }
    );
  }
}
