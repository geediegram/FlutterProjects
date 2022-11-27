import 'package:coffee_shop/server/coffee_server.pb.dart';
import 'package:coffee_shop/server/coffee_service.dart';
// import 'package:coffee_shop/services/auth_service.dart';
import 'package:coffee_shop/shared/email_constant.dart';
import 'package:coffee_shop/shared/loading.dart';
import 'package:coffee_shop/shared/password_constant.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {

  const SignIn ({Key? key, required this.params}): super(key: key);

  final Function params;

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {

  // final AuthService _auth = AuthService();
  final _formKey = GlobalKey<FormState>();
  bool loading = false;

  //state initialization
  String email = "";
  String password = "";
  String error = "";

  LoginRequest? loginRequest;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFC99864),
      appBar: AppBar(
        backgroundColor: Colors.brown[600],
        elevation: 5.0,
        title: Text('Seuns Coffee Spot'),
        actions: <Widget>[
          FlatButton.icon(
            onPressed: () {
              widget.params();
            },
            icon: Icon(Icons.person),
            label: Text(
                'Register',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            color: Colors.brown[700],
          ),
        ],
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              SizedBox(height: 30.0),
              Text(
                'Sign In',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30.0,
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                'Enjoyed your last cup? Order Another!',
                style: TextStyle(
                  fontSize: 15.0,
                  fontWeight: FontWeight.w500,
                  color: Colors.brown[600],
                ),
              ),
              SizedBox(height: 30.0),
              TextFormField(
                validator: (value) => value?.isEmpty ?? true ? 'Enter your email' : null,
                enableSuggestions: true,
                autocorrect: true,
                decoration: emailInputDecoration,
                onChanged: (value) {
                  setState(() => email = value);
                },
              ),
              SizedBox(height: 20.0),
              TextFormField(
                validator: (value) => (value?.length ?? 0) < 8 ? 'Enter your password' : null,
                decoration: passwordInputDecoration,
                obscureText: true,
                onChanged: (value) {
                  setState(() => password = value);
                },
              ),
              const SizedBox(height: 30.0),
              RaisedButton(
                color: Colors.brown[600],
                child: const Text(
                  'Sign In',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                onPressed: () async {
                  if (_formKey.currentState?.validate() ?? true) {
                    dynamic result = await CoffeeService.Login(email, password);
                    if(result == null) {
                      setState(() =>
                      error = 'Could not Sign in. Email or Password incorrect!');
                    }
                  }
                },
              ),
              SizedBox(height: 20),
              Text(
                error,
                style: TextStyle(
                  fontSize: 12.0,
                  color: Colors.red,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
