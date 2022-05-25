import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_grpc_demo/generated/my_grpc_service.pbgrpc.dart';
import 'package:flutter_grpc_demo/services/grpc_service.dart';

part 'server_grpc_stream_state.dart';

class ServerGrpcStreamCubit extends Cubit<ServerGrpcStreamState> {
  final MyGrpcService myGrpcService;

  ServerGrpcStreamCubit(this.myGrpcService) : super(ServerGrpcStreamInitial());

  Future<void> listenToStream(MyGrpcRequest request) async {
    try {
      var stream = myGrpcService.listenToStreamFromServer(request);
      stream.listen((response) {
        emit(ServerGrpcStreamLoading());
        emit(ServerGrpcStreamLoaded(response));
      }).onError((_) => emit(ServerGrpcStreamError()));
    } on Exception catch (_) {
      emit(ServerGrpcStreamError());
    }
  }
}
