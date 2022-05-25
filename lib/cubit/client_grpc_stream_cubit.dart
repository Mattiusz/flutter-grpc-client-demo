import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_grpc_demo/generated/my_grpc_service.pbgrpc.dart';
import 'package:flutter_grpc_demo/services/grpc_service.dart';

part 'client_grpc_stream_state.dart';

class ClientGrpcStreamCubit extends Cubit<ClientGrpcStreamState> {
  final MyGrpcService myGrpcService;

  ClientGrpcStreamCubit(this.myGrpcService) : super(ClientGrpcStreamInitial());

  Future<void> sendStream(Stream<MyGrpcRequest> requests) async {
    try {
      emit(ClientGrpcStreamLoading());
      var response = await myGrpcService.streamDataToServer(requests);
      emit(ClientGrpcStreamLoaded(response));
    } on Exception catch (_) {
      emit(ClientGrpcStreamError());
    }
  }
}
