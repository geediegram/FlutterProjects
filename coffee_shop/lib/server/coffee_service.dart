import 'package:coffee_shop/grpc_flutter_client.dart';
import 'package:coffee_shop/server/coffee_server.pb.dart';
import 'package:coffee_shop/server/coffee_server.pbgrpc.dart';
import 'package:grpc/grpc.dart' as grpc;
import 'package:crypto/crypto.dart';
import 'dart:convert';

import 'package:provider/provider.dart';


class CoffeeService  {


  static Future<Response>? Register(String emailAddress, String password) async {
    var client = CoffeeUserServicesClient(GrpcFlutterClient.getClient()!);
    print('Printing Response $client');
    RegisterRequest request = RegisterRequest.create();
    request.emailAddress = emailAddress;
    request.password = password;
    print('Okay');
    print(emailAddress);
    print(password);
    var obj = await client.register(request, options: grpc.CallOptions(timeout: const Duration(seconds: 30)));
    print('Very Okay');
    print("obj ->");
    print(obj);
    return obj;
  }



  static Future<Response> Login(String email, String password) async {
    var client = CoffeeUserServicesClient(GrpcFlutterClient.getClient()!);
    LoginRequest request = LoginRequest.create();
    request.email = email;
    request.password = password;
    return await client.login(request, options: grpc.CallOptions(timeout: const Duration(seconds: 30)));
  }

}