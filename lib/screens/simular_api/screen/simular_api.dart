import 'package:flutter/material.dart';
import 'package:flutter_practice_code/screens/simular_api/enum/enviorment.dart';

class SimularApi extends StatelessWidget {
  final Environment environment;
  const SimularApi({
    Key? key,
    required this.environment,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Entorno Actual: ${_env(environment)}"),
      ),
      body: Text("asdasd"),
    );
  }

  String _env(Environment environment) {
    switch (environment) {
      case Environment.mock:
        return "Mock";
      case Environment.testing:
        return "Testing";
      case Environment.producction:
        return "Producction";
      default:
        return '';
    }
  }
}
