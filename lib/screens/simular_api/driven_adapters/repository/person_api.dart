import 'package:flutter_practice_code/screens/simular_api/driven_adapters/gateway/api_gateway.dart';
import 'package:flutter_practice_code/screens/simular_api/driven_adapters/models/person.dart';

class PersonApi implements ApiGateway {
  @override
  Future<List<Person>> getDataPersons() {
    // TODO: implement getDataPerson
    throw UnimplementedError();
  }

  @override
  Future<Person> getDetailsPersonByName({required String name}) {
    // TODO: implement getDetailsPersonByName
    throw UnimplementedError();
  }
}
