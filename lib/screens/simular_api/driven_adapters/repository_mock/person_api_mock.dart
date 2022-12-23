import 'package:flutter_practice_code/screens/simular_api/driven_adapters/infraestructure/my_api.dart';
import 'package:flutter_practice_code/screens/simular_api/driven_adapters/models/person.dart';
import 'package:flutter_practice_code/screens/simular_api/helper/helper_data_mock.dart';

class PersonApiMock implements MyApi {
  @override
  Future<List<Person>> getDataPersons() async {
    try {
      await Future.delayed(const Duration(seconds: 5));
      final data = HelperDataMock().getDataPersonsMock();

      return data.map((element) => Person.fromJson(element)).toList();
    } catch (e) {
      return [
        Person(
          age: 99,
          lastName: "ERROR",
          name: "Error",
        )
      ];
    }
  }

  @override
  Future<Person> getDetailsPersonByName({required String name}) {
    // TODO: implement getDetailsPersonByName
    throw UnimplementedError();
  }
}
