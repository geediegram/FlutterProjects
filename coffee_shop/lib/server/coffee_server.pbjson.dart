///
//  Generated code. Do not modify.
//  source: coffee_server.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use registerRequestDescriptor instead')
const RegisterRequest$json = const {
  '1': 'RegisterRequest',
  '2': const [
    const {'1': 'Id', '3': 1, '4': 1, '5': 5, '10': 'Id'},
    const {'1': 'Name', '3': 2, '4': 1, '5': 9, '10': 'Name'},
    const {'1': 'EmailAddress', '3': 3, '4': 1, '5': 9, '10': 'EmailAddress'},
    const {'1': 'DeliveryAddress', '3': 4, '4': 1, '5': 9, '10': 'DeliveryAddress'},
    const {'1': 'PhoneNumber', '3': 5, '4': 1, '5': 9, '10': 'PhoneNumber'},
    const {'1': 'Password', '3': 6, '4': 1, '5': 9, '10': 'Password'},
  ],
};

/// Descriptor for `RegisterRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List registerRequestDescriptor = $convert.base64Decode('Cg9SZWdpc3RlclJlcXVlc3QSDgoCSWQYASABKAVSAklkEhIKBE5hbWUYAiABKAlSBE5hbWUSIgoMRW1haWxBZGRyZXNzGAMgASgJUgxFbWFpbEFkZHJlc3MSKAoPRGVsaXZlcnlBZGRyZXNzGAQgASgJUg9EZWxpdmVyeUFkZHJlc3MSIAoLUGhvbmVOdW1iZXIYBSABKAlSC1Bob25lTnVtYmVyEhoKCFBhc3N3b3JkGAYgASgJUghQYXNzd29yZA==');
@$core.Deprecated('Use loginRequestDescriptor instead')
const LoginRequest$json = const {
  '1': 'LoginRequest',
  '2': const [
    const {'1': 'Email', '3': 2, '4': 1, '5': 9, '10': 'Email'},
    const {'1': 'Password', '3': 3, '4': 1, '5': 9, '10': 'Password'},
  ],
};

/// Descriptor for `LoginRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List loginRequestDescriptor = $convert.base64Decode('CgxMb2dpblJlcXVlc3QSFAoFRW1haWwYAiABKAlSBUVtYWlsEhoKCFBhc3N3b3JkGAMgASgJUghQYXNzd29yZA==');
@$core.Deprecated('Use updateCoffeeDescriptor instead')
const UpdateCoffee$json = const {
  '1': 'UpdateCoffee',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'sugar', '3': 2, '4': 1, '5': 9, '10': 'sugar'},
    const {'1': 'strength', '3': 3, '4': 1, '5': 5, '10': 'strength'},
    const {'1': 'cups', '3': 4, '4': 1, '5': 5, '10': 'cups'},
  ],
};

/// Descriptor for `UpdateCoffee`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateCoffeeDescriptor = $convert.base64Decode('CgxVcGRhdGVDb2ZmZWUSEgoEbmFtZRgBIAEoCVIEbmFtZRIUCgVzdWdhchgCIAEoCVIFc3VnYXISGgoIc3RyZW5ndGgYAyABKAVSCHN0cmVuZ3RoEhIKBGN1cHMYBCABKAVSBGN1cHM=');
@$core.Deprecated('Use responseDescriptor instead')
const Response$json = const {
  '1': 'Response',
  '2': const [
    const {'1': 'msg', '3': 1, '4': 1, '5': 9, '10': 'msg'},
  ],
};

/// Descriptor for `Response`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List responseDescriptor = $convert.base64Decode('CghSZXNwb25zZRIQCgNtc2cYASABKAlSA21zZw==');
@$core.Deprecated('Use closeDescriptor instead')
const Close$json = const {
  '1': 'Close',
};

/// Descriptor for `Close`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List closeDescriptor = $convert.base64Decode('CgVDbG9zZQ==');
