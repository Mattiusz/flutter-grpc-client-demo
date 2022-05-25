part of 'client_grpc_stream_cubit.dart';

abstract class ClientGrpcStreamState extends Equatable {}

class ClientGrpcStreamInitial extends ClientGrpcStreamState {
  @override
  List<Object> get props => [];
}

class ClientGrpcStreamLoading extends ClientGrpcStreamState {
  @override
  List<Object> get props => [];
}

class ClientGrpcStreamLoaded extends ClientGrpcStreamState {
  final MyGrpcResponse response;

  ClientGrpcStreamLoaded(this.response);

  @override
  List<MyGrpcResponse> get props => [response];
}

class ClientGrpcStreamError extends ClientGrpcStreamState {
  @override
  List<Object> get props => [];
}
