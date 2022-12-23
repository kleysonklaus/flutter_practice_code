import 'package:flutter/material.dart';
import 'package:flutter_practice_code/screens/simular_api/driven_adapters/models/person.dart';

class FpcPersonCard extends StatelessWidget {
  final Person model;
  const FpcPersonCard({Key? key, required this.model}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          const Text("Nombre"),
          const SizedBox(height: 5),
          Text(model.name),
          const SizedBox(height: 5),
          Text(model.lastName),
          const SizedBox(height: 5),
          Text("Edad: ${model.age}"),
          const SizedBox(height: 5),
        ],
      ),
    );
  }
}
