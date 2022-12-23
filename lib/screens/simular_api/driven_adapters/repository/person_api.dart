import 'package:flutter_practice_code/screens/simular_api/driven_adapters/gateway/api_gateway.dart';
import 'package:flutter_practice_code/screens/simular_api/driven_adapters/models/person.dart';
import 'package:flutter_practice_code/screens/simular_api/helper/helper_data_internet.dart';

class PersonApi implements ApiGateway {
  @override
  Future<List<Person>> getDataPersons() async {
    try {
      await Future.delayed(const Duration(seconds: 8));
      final data = HelperDataInternet().getDataPersonsInternet();

      return data.map((element) => Person.fromJson(element)).toList();
    } catch (e) {
      return [
        Person(
          age: 99,
          lastName: "ERROR INTERNET",
          name: "Error Internet",
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
