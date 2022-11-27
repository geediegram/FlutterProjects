///
//  Generated code. Do not modify.
//  source: coffee_server.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'coffee_server.pb.dart' as $0;
export 'coffee_server.pb.dart';

class CoffeeUserServicesClient extends $grpc.Client {
  static final _$register = $grpc.ClientMethod<$0.RegisterRequest, $0.Response>(
      '/proto1.CoffeeUserServices/Register',
      ($0.RegisterRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Response.fromBuffer(value));
  static final _$login = $grpc.ClientMethod<$0.LoginRequest, $0.Response>(
      '/proto1.CoffeeUserServices/Login',
      ($0.LoginRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Response.fromBuffer(value));
  static final _$updateUserCoffee =
      $grpc.ClientMethod<$0.UpdateCoffee, $0.Response>(
          '/proto1.CoffeeUserServices/UpdateUserCoffee',
          ($0.UpdateCoffee value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.Response.fromBuffer(value));

  CoffeeUserServicesClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.Response> register($0.RegisterRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$register, request, options: options);
  }

  $grpc.ResponseFuture<$0.Response> login($0.LoginRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$login, request, options: options);
  }

  $grpc.ResponseFuture<$0.Response> updateUserCoffee($0.UpdateCoffee request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateUserCoffee, request, options: options);
  }
}

abstract class CoffeeUserServicesServiceBase extends $grpc.Service {
  $core.String get $name => 'proto1.CoffeeUserServices';

  CoffeeUserServicesServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.RegisterRequest, $0.Response>(
        'Register',
        register_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.RegisterRequest.fromBuffer(value),
        ($0.Response value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.LoginRequest, $0.Response>(
        'Login',
        login_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.LoginRequest.fromBuffer(value),
        ($0.Response value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.UpdateCoffee, $0.Response>(
        'UpdateUserCoffee',
        updateUserCoffee_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.UpdateCoffee.fromBuffer(value),
        ($0.Response value) => value.writeToBuffer()));
  }

  $async.Future<$0.Response> register_Pre(
      $grpc.ServiceCall call, $async.Future<$0.RegisterRequest> request) async {
    return register(call, await request);
  }

  $async.Future<$0.Response> login_Pre(
      $grpc.ServiceCall call, $async.Future<$0.LoginRequest> request) async {
    return login(call, await request);
  }

  $async.Future<$0.Response> updateUserCoffee_Pre(
      $grpc.ServiceCall call, $async.Future<$0.UpdateCoffee> request) async {
    return updateUserCoffee(call, await request);
  }

  $async.Future<$0.Response> register(
      $grpc.ServiceCall call, $0.RegisterRequest request);
  $async.Future<$0.Response> login(
      $grpc.ServiceCall call, $0.LoginRequest request);
  $async.Future<$0.Response> updateUserCoffee(
      $grpc.ServiceCall call, $0.UpdateCoffee request);
}
