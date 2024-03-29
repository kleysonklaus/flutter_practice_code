import 'package:flutter_practice_code/screens/simular_api/driven_adapters/models/person.dart';
import 'package:flutter_practice_code/screens/simular_api/driven_adapters/repository/person_api.dart';
import 'package:flutter_practice_code/screens/simular_api/helper/helper_data_mock.dart';

class PersonApiMock extends PersonApi {
  @override
  Future<List<Person>> getDataPersons() async {
    try {
      await Future.delayed(const Duration(seconds: 2));
      final data = HelperDataMock().getDataPersonsMock();

      return data.map((element) => Person.fromJson(element)).toList();
    } catch (e) {
      return [
        Person(
          age: 99,
          lastName: "ERROR MOCK",
          name: "Error Mock",
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
