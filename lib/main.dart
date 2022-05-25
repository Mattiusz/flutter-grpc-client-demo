import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_grpc_demo/cubit/client_grpc_stream_cubit.dart';
import 'package:flutter_grpc_demo/cubit/server_grpc_stream_cubit.dart';
import 'package:flutter_grpc_demo/cubit/unary_grpc_cubit.dart';
import 'package:flutter_grpc_demo/services/grpc_service.dart';
import 'package:flutter_grpc_demo/views/home/home.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider(create: (_) => MyGrpcService()),
        BlocProvider(create: (context) => UnaryGrpcCubit(context.read<MyGrpcService>())),
        BlocProvider(create: (context) => ServerGrpcStreamCubit(context.read<MyGrpcService>())),
        BlocProvider(create: (context) => ClientGrpcStreamCubit(context.read<MyGrpcService>())),
      ],
      child: const MaterialApp(
        title: 'Flutter GRPC Demo',
        home: HomeView(),
      ),
    );
  }
}
