part of 'unary_grpc_cubit.dart';

abstract class UnaryGrpcState extends Equatable {}

class UnaryGrpcInitial extends UnaryGrpcState {
  @override
  List<Object> get props => [];
}

class UnaryGrpcLoading extends UnaryGrpcState {
  @override
  List<Object> get props => [];
}

class UnaryGrpcLoaded extends UnaryGrpcState {
  final MyGrpcResponse response;

  UnaryGrpcLoaded(this.response);

  @override
  List<MyGrpcResponse> get props => [response];
}

class UnaryGrpcError extends UnaryGrpcState {
  @override
  List<Object> get props => [];
}
