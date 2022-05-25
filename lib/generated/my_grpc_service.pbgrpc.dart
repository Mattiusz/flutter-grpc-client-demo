///
//  Generated code. Do not modify.
//  source: my_grpc_service.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'my_grpc_service.pb.dart' as $0;
export 'my_grpc_service.pb.dart';

class MyGrpcServiceClient extends $grpc.Client {
  static final _$sendAndGetData =
      $grpc.ClientMethod<$0.MyGrpcRequest, $0.MyGrpcResponse>(
          '/my_grpc_service.MyGrpcService/SendAndGetData',
          ($0.MyGrpcRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.MyGrpcResponse.fromBuffer(value));
  static final _$getLotsOfData =
      $grpc.ClientMethod<$0.MyGrpcRequest, $0.MyGrpcResponse>(
          '/my_grpc_service.MyGrpcService/GetLotsOfData',
          ($0.MyGrpcRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.MyGrpcResponse.fromBuffer(value));
  static final _$sendLotsOfData =
      $grpc.ClientMethod<$0.MyGrpcRequest, $0.MyGrpcResponse>(
          '/my_grpc_service.MyGrpcService/SendLotsOfData',
          ($0.MyGrpcRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.MyGrpcResponse.fromBuffer(value));

  MyGrpcServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.MyGrpcResponse> sendAndGetData(
      $0.MyGrpcRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$sendAndGetData, request, options: options);
  }

  $grpc.ResponseStream<$0.MyGrpcResponse> getLotsOfData(
      $0.MyGrpcRequest request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(
        _$getLotsOfData, $async.Stream.fromIterable([request]),
        options: options);
  }

  $grpc.ResponseFuture<$0.MyGrpcResponse> sendLotsOfData(
      $async.Stream<$0.MyGrpcRequest> request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$sendLotsOfData, request, options: options)
        .single;
  }
}

abstract class MyGrpcServiceBase extends $grpc.Service {
  $core.String get $name => 'my_grpc_service.MyGrpcService';

  MyGrpcServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.MyGrpcRequest, $0.MyGrpcResponse>(
        'SendAndGetData',
        sendAndGetData_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.MyGrpcRequest.fromBuffer(value),
        ($0.MyGrpcResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.MyGrpcRequest, $0.MyGrpcResponse>(
        'GetLotsOfData',
        getLotsOfData_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $0.MyGrpcRequest.fromBuffer(value),
        ($0.MyGrpcResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.MyGrpcRequest, $0.MyGrpcResponse>(
        'SendLotsOfData',
        sendLotsOfData,
        true,
        false,
        ($core.List<$core.int> value) => $0.MyGrpcRequest.fromBuffer(value),
        ($0.MyGrpcResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.MyGrpcResponse> sendAndGetData_Pre(
      $grpc.ServiceCall call, $async.Future<$0.MyGrpcRequest> request) async {
    return sendAndGetData(call, await request);
  }

  $async.Stream<$0.MyGrpcResponse> getLotsOfData_Pre(
      $grpc.ServiceCall call, $async.Future<$0.MyGrpcRequest> request) async* {
    yield* getLotsOfData(call, await request);
  }

  $async.Future<$0.MyGrpcResponse> sendAndGetData(
      $grpc.ServiceCall call, $0.MyGrpcRequest request);
  $async.Stream<$0.MyGrpcResponse> getLotsOfData(
      $grpc.ServiceCall call, $0.MyGrpcRequest request);
  $async.Future<$0.MyGrpcResponse> sendLotsOfData(
      $grpc.ServiceCall call, $async.Stream<$0.MyGrpcRequest> request);
}
