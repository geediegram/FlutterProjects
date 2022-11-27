import 'package:coffee_shop/models/user.dart';
import 'package:coffee_shop/screens/index.dart';
import 'package:coffee_shop/screens/wrapper.dart';
import 'package:coffee_shop/services/auth_service.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:coffee_shop/server/coffee_service.dart';
import 'package:coffee_shop/server/coffee_server.pb.dart';



void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  await Firebase.initializeApp();
  runApp(
      // StreamProvider<MyUser?>.value(
    // initialData: null,
    // value: AuthService().user,
    // child:
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Wrapper(),
    ),
  // )
  );
}