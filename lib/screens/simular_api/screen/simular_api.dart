import 'package:flutter/material.dart';
import 'package:flutter_practice_code/screens/simular_api/enum/enviorment.dart';
import 'package:flutter_practice_code/screens/simular_api/simple_provider/simple_provider.dart';

class SimularApi extends StatefulWidget {
  final Environment environment;
  const SimularApi({
    Key? key,
    required this.environment,
  }) : super(key: key);

  @override
  State<SimularApi> createState() => _SimularApiState();
}

class _SimularApiState extends State<SimularApi> {
  SimpleProvider provider = SimpleProvider();
  @override
  void initState() {
    provider.setEnvironment(environment: widget.environment);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Entorno Actual: ${provider.getLabelEnv()}"),
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
