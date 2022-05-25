part of 'server_grpc_stream_cubit.dart';

abstract class ServerGrpcStreamState extends Equatable {}

class ServerGrpcStreamInitial extends ServerGrpcStreamState {
  @override
  List<Object> get props => [];
}

class ServerGrpcStreamLoading extends ServerGrpcStreamState {
  @override
  List<Object> get props => [];
}

class ServerGrpcStreamLoaded extends ServerGrpcStreamState {
  final MyGrpcResponse response;

  ServerGrpcStreamLoaded(this.response);

  @override
  List<MyGrpcResponse> get props => [response];
}

class ServerGrpcStreamError extends ServerGrpcStreamState {
  @override
  List<Object> get props => [];
}
