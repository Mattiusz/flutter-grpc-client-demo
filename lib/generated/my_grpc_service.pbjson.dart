///
//  Generated code. Do not modify.
//  source: my_grpc_service.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package
// ignore_for_file: type=lint

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use myGrpcResponseDescriptor instead')
const MyGrpcResponse$json = const {
  '1': 'MyGrpcResponse',
  '2': const [
    const {'1': 'SomeDouble', '3': 1, '4': 1, '5': 1, '10': 'SomeDouble'},
    const {'1': 'SomeString', '3': 2, '4': 1, '5': 9, '10': 'SomeString'},
  ],
};

/// Descriptor for `MyGrpcResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List myGrpcResponseDescriptor = $convert.base64Decode(
    'Cg5NeUdycGNSZXNwb25zZRIeCgpTb21lRG91YmxlGAEgASgBUgpTb21lRG91YmxlEh4KClNvbWVTdHJpbmcYAiABKAlSClNvbWVTdHJpbmc=');
@$core.Deprecated('Use myGrpcRequestDescriptor instead')
const MyGrpcRequest$json = const {
  '1': 'MyGrpcRequest',
  '2': const [
    const {'1': 'SomeString', '3': 1, '4': 1, '5': 9, '10': 'SomeString'},
  ],
};

/// Descriptor for `MyGrpcRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List myGrpcRequestDescriptor =
    $convert.base64Decode('Cg1NeUdycGNSZXF1ZXN0Eh4KClNvbWVTdHJpbmcYASABKAlSClNvbWVTdHJpbmc=');
