import 'package:flutter_grpc_demo/generated/my_grpc_service.pbgrpc.dart';
import 'package:grpc/grpc.dart';

class MyGrpcService {
  final channel = ClientChannel(
    '0.0.0.0',
    port: 50052,
    options: const ChannelOptions(credentials: ChannelCredentials.insecure()),
  );

  Future<MyGrpcResponse> sendAndGetData(MyGrpcRequest request) async {
    final stub = MyGrpcServiceClient(channel);
    try {
      return await stub.sendAndGetData(request);
    } on Exception catch (e) {
      return Future.error(e);
    }
  }

  Stream<MyGrpcResponse> listenToStreamFromServer(MyGrpcRequest request) async* {
    final stub = MyGrpcServiceClient(channel);
    try {
      var responses = stub.getLotsOfData(request);
      await for (final response in responses) {
        yield response;
      }
    } on Exception catch (e) {
      yield* Stream.error(e);
    }
  }

  Future<MyGrpcResponse> streamDataToServer(Stream<MyGrpcRequest> requests) async {
    final stub = MyGrpcServiceClient(channel);
    try {
      return await stub.sendLotsOfData(requests);
    } on Exception catch (e) {
      return Future.error(e);
    }
  }

  Future<void> shutdown() async {
    await channel.shutdown();
  }
}
