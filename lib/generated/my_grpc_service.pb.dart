///
//  Generated code. Do not modify.
//  source: my_grpc_service.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class MyGrpcResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MyGrpcResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'my_grpc_service'), createEmptyInstance: create)
    ..a<$core.double>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'SomeDouble', $pb.PbFieldType.OD, protoName: 'SomeDouble')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'SomeString', protoName: 'SomeString')
    ..hasRequiredFields = false
  ;

  MyGrpcResponse._() : super();
  factory MyGrpcResponse({
    $core.double? someDouble,
    $core.String? someString,
  }) {
    final _result = create();
    if (someDouble != null) {
      _result.someDouble = someDouble;
    }
    if (someString != null) {
      _result.someString = someString;
    }
    return _result;
  }
  factory MyGrpcResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MyGrpcResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MyGrpcResponse clone() => MyGrpcResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MyGrpcResponse copyWith(void Function(MyGrpcResponse) updates) => super.copyWith((message) => updates(message as MyGrpcResponse)) as MyGrpcResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MyGrpcResponse create() => MyGrpcResponse._();
  MyGrpcResponse createEmptyInstance() => create();
  static $pb.PbList<MyGrpcResponse> createRepeated() => $pb.PbList<MyGrpcResponse>();
  @$core.pragma('dart2js:noInline')
  static MyGrpcResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MyGrpcResponse>(create);
  static MyGrpcResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get someDouble => $_getN(0);
  @$pb.TagNumber(1)
  set someDouble($core.double v) { $_setDouble(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSomeDouble() => $_has(0);
  @$pb.TagNumber(1)
  void clearSomeDouble() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get someString => $_getSZ(1);
  @$pb.TagNumber(2)
  set someString($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSomeString() => $_has(1);
  @$pb.TagNumber(2)
  void clearSomeString() => clearField(2);
}

class MyGrpcRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MyGrpcRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'my_grpc_service'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'SomeString', protoName: 'SomeString')
    ..hasRequiredFields = false
  ;

  MyGrpcRequest._() : super();
  factory MyGrpcRequest({
    $core.String? someString,
  }) {
    final _result = create();
    if (someString != null) {
      _result.someString = someString;
    }
    return _result;
  }
  factory MyGrpcRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MyGrpcRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MyGrpcRequest clone() => MyGrpcRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MyGrpcRequest copyWith(void Function(MyGrpcRequest) updates) => super.copyWith((message) => updates(message as MyGrpcRequest)) as MyGrpcRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MyGrpcRequest create() => MyGrpcRequest._();
  MyGrpcRequest createEmptyInstance() => create();
  static $pb.PbList<MyGrpcRequest> createRepeated() => $pb.PbList<MyGrpcRequest>();
  @$core.pragma('dart2js:noInline')
  static MyGrpcRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MyGrpcRequest>(create);
  static MyGrpcRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get someString => $_getSZ(0);
  @$pb.TagNumber(1)
  set someString($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSomeString() => $_has(0);
  @$pb.TagNumber(1)
  void clearSomeString() => clearField(1);
}

