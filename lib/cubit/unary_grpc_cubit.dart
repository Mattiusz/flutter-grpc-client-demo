import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_grpc_demo/generated/my_grpc_service.pbgrpc.dart';
import 'package:flutter_grpc_demo/services/grpc_service.dart';

part 'unary_grpc_state.dart';

class UnaryGrpcCubit extends Cubit<UnaryGrpcState> {
  final MyGrpcService myGrpcService;

  UnaryGrpcCubit(this.myGrpcService) : super(UnaryGrpcInitial());

  Future<void> sendAndGetData(MyGrpcRequest request) async {
    try {
      emit(UnaryGrpcLoading());
      var response = await myGrpcService.sendAndGetData(request);
      emit(UnaryGrpcLoaded(response));
    } on Exception catch (_) {
      emit(UnaryGrpcError());
    }
  }
}
