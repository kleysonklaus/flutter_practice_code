import 'package:flutter_practice_code/screens/simular_api/driven_adapters/infraestructure/my_api.dart';
import 'package:flutter_practice_code/screens/simular_api/driven_adapters/models/person.dart';

class PersonApiMock implements MyApi {
  @override
  Future<Person> getDataPersons() {
    // TODO: implement getDataPerson
    throw UnimplementedError();
  }

  @override
  Future<Person> getDetailsPersonByName({required String name}) {
    // TODO: implement getDetailsPersonByName
    throw UnimplementedError();
  }
}
