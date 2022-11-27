import 'package:flutter/material.dart';

 final emailInputDecoration = InputDecoration(
   fillColor: Colors.brown[200],
   filled: true,
   enabledBorder: OutlineInputBorder(
     borderSide: BorderSide(
       color: Colors.brown[300]!,
       width: 2.0,
     ),
   ),
   focusedBorder: OutlineInputBorder(
     borderSide: BorderSide(
       color: Colors.brown[500]!,
       width: 2.0,
     ),
   ),
   icon: Icon(Icons.email),
   hintText: 'Email *',
 );