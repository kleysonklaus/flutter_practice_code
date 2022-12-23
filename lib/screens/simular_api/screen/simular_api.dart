import 'package:flutter/material.dart';
import 'package:flutter_practice_code/screens/simular_api/driven_adapters/models/person.dart';
import 'package:flutter_practice_code/screens/simular_api/enum/enviorment.dart';
import 'package:flutter_practice_code/screens/simular_api/simple_provider/simple_provider.dart';
import 'package:flutter_practice_code/widgets/widgets.dart';

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
      body: FutureBuilder(
        future: provider.api.getDataPersons(),
        builder: ((context, AsyncSnapshot<List<Person>> snapshot) {
          if (snapshot.hasData == false) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  CircularProgressIndicator(),
                  Text("Obteniendo datos")
                ],
              ),
            );
          }
          final persons = snapshot.data!;
          return ListView(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            children: persons.map((person) {
              return FpcPersonCard(model: person);
            }).toList(),
          );
        }),
      ),
    );
  }
}
