import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_grpc_demo/cubit/client_grpc_stream_cubit.dart';
import 'package:flutter_grpc_demo/cubit/server_grpc_stream_cubit.dart';
import 'package:flutter_grpc_demo/cubit/unary_grpc_cubit.dart';
import 'package:flutter_grpc_demo/generated/my_grpc_service.pbgrpc.dart';
import 'package:flutter_grpc_demo/views/home/widgets/data_display.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Flutter GRPC Demo')),
      body: Column(children: [
        const SizedBox(height: 30),
        BlocBuilder<UnaryGrpcCubit, UnaryGrpcState>(
          builder: (context, state) => DataDisplay(
              label: 'Unary GRPC Demo',
              buttonLabel: 'Send request',
              data: (state is UnaryGrpcLoaded) ? state.props.first : null,
              onButtonPress: () {
                // Create a request with some data
                var request = MyGrpcRequest()..someString = '123';
                // Make a unary grpc call that triggers a rebuild of the widget after data is received
                BlocProvider.of<UnaryGrpcCubit>(context).sendAndGetData(request);
              }),
        ),
        const SizedBox(height: 30),
        BlocBuilder<ServerGrpcStreamCubit, ServerGrpcStreamState>(
          buildWhen: (previous, current) =>
              previous is ServerGrpcStreamLoading && current is ServerGrpcStreamLoaded,
          builder: (context, state) => DataDisplay(
              label: 'Server Stream GRPC Demo',
              buttonLabel: 'Request stream of data',
              data: (state is ServerGrpcStreamLoaded) ? state.props.first : null,
              onButtonPress: () {
                // Create a request with some data
                var request = MyGrpcRequest()..someString = '123';
                // Make a unary grpc call that triggers a rebuild of the widget after data is received
                BlocProvider.of<ServerGrpcStreamCubit>(context).listenToStream(request);
              }),
        ),
        const SizedBox(height: 30),
        BlocBuilder<ClientGrpcStreamCubit, ClientGrpcStreamState>(
          buildWhen: (previous, current) =>
              previous is ServerGrpcStreamLoading && current is ServerGrpcStreamLoaded,
          builder: (context, state) => DataDisplay(
              label: 'Client Stream GRPC Demo',
              buttonLabel: 'Send stream of data',
              data: (state is ClientGrpcStreamLoaded) ? state.props.first : null,
              onButtonPress: () {
                // Create a stream of requests with some data
                Stream<MyGrpcRequest> requestStream(int numberOfRequests) async* {
                  for (var i = 1; i <= numberOfRequests; i++) {
                    yield MyGrpcRequest()..someString = i.toString();
                  }
                }

                var stream = requestStream(10);
                // Make a unary grpc call that triggers a rebuild of the widget after data is received
                BlocProvider.of<ClientGrpcStreamCubit>(context).sendStream(stream);
              }),
        )
      ]),
    );
  }
}
