import 'package:flutter/material.dart';
import 'package:flutter_grpc_demo/generated/my_grpc_service.pb.dart';

class DataDisplay extends StatelessWidget {
  final String label;
  final String buttonLabel;
  final Function onButtonPress;
  final MyGrpcResponse? data;

  const DataDisplay(
      {required this.label,
      required this.buttonLabel,
      required this.onButtonPress,
      this.data,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;

    return Container(
      padding: const EdgeInsets.all(5.0),
      decoration: const BoxDecoration(
          color: Color.fromARGB(190, 218, 228, 232),
          borderRadius: BorderRadius.all(Radius.circular(20))),
      child: FittedBox(
        child: Column(
          children: [
            const SizedBox(height: 20),
            Center(child: Text(label)),
            const SizedBox(height: 20),
            Row(children: [
              Container(
                  width: screenWidth / 2,
                  padding: const EdgeInsets.all(5),
                  child: const Text('SomeDouble')),
              Container(
                  width: screenWidth / 2,
                  padding: const EdgeInsets.all(5),
                  child: (data != null) ? Text(data!.someDouble.toString()) : const Text(''))
            ]),
            Row(children: [
              Container(
                  width: screenWidth / 2,
                  padding: const EdgeInsets.all(5),
                  child: const Text('SomeString')),
              Container(
                  width: screenWidth / 2,
                  padding: const EdgeInsets.all(5),
                  child: (data != null) ? Text(data!.someString.toString()) : const Text(''))
            ]),
            const SizedBox(height: 20),
            InkWell(
              // ignore: unnecessary_lambdas
              onTap: () => onButtonPress(),
              child: Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.amber,
                ),
                child: Center(child: Text(buttonLabel)),
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
