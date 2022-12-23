import 'package:flutter_practice_code/screens/simular_api/driven_adapters/models/person.dart';

abstract class MyApi {
  Future<Person> getDataPersons();
  Future<Person> getDetailsPersonByName({required String name});
}
