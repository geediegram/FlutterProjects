import 'package:coffee_shop/screens/auth/register.dart';
import 'package:coffee_shop/server/coffee_service.dart';
import 'package:coffee_shop/services/auth_service.dart';
import 'package:coffee_shop/shared/email_constant.dart';
// import 'package:coffee_shop/shared/loading.dart';
import 'package:coffee_shop/shared/password_constant.dart';
import 'package:flutter/material.dart';
import 'package:coffee_shop/server/coffee_server.pbgrpc.dart';
import 'package:grpc/grpc.dart' as grpc;

class Register extends StatefulWidget {

  const Register ({Key? key, required this.params}) : super(key: key);

   final Function params;


  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {

  final AuthService _auth = AuthService();
  final _formKey = GlobalKey<FormState>();

  bool loading = false;
  String emailAddress = "";
  String password = "";
  String error = "";

  String registerResult = "";

  RegisterRequest? registerRequest;

  Future <void> _registerUser() async {
    try {
      ( _formKey.currentState?.validate() ?? true );
      print('Im here');
      var result = await CoffeeService.Register(emailAddress, password);
      print('Front result $result');
      registerResult = result!.msg.toString();
      print('hold on');
      // if(result == null ) {
      print('I got in');
      setState(() => error =
        'Could not Register. Email or password incorrect!'
      );
      // }
      print('I got in');
    }  catch (e) {
      print('I didnt go in');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFC99864),
      appBar: AppBar(
        backgroundColor: Colors.brown[600],
        elevation: 5.0,
        title: const Text('Seuns Coffee Spot'),
        actions:  <Widget>[
           FlatButton.icon(
               onPressed: () {
                 widget.params();
               },
               icon: const Icon(Icons.person),
               label: const Text(
                   'Sign In',
                 style: TextStyle(
                   color: Colors.white,
                 ),
               ),
             color: Colors.brown[700],
           ),
        ],
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              const SizedBox(height: 30.0),
              const Text(
                  'Register',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30.0,
                ),
              ),
              const SizedBox(height: 10.0),
              Text(
                  'Premium Coffee. Premium Taste.',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 15.0,
                    color: Colors.brown[600],
                  ),
              ),
              SizedBox(height: 30.0),
              TextFormField(
                validator: (value) => value?.isEmpty ?? true ? 'Enter your mail' : null,
                enableSuggestions: true,
                autocorrect: true,
                decoration: emailInputDecoration,
                onChanged: (value) {
                  setState(() => emailAddress = value);
                },
              ),
              SizedBox(height: 20.0),
              TextFormField(
                obscureText: true,
                validator: (value) => (value?.length ?? 0) < 8 ? 'Enter a valid password' : null,
                decoration: passwordInputDecoration,
                onChanged: (value) {
                  setState(() => password = value);
                },
              ),
              const SizedBox(height: 30.0),
              RaisedButton(
                  color: Colors.brown[600],
                  child: const Text(
                    'Register',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  onPressed: _registerUser,
              ),
              const SizedBox(height: 20),
              Text(
                error,
                style: const TextStyle(
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
