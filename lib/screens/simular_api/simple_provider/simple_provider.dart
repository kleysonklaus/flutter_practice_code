import 'package:flutter_practice_code/screens/simular_api/driven_adapters/gateway/api_gateway.dart';
import 'package:flutter_practice_code/screens/simular_api/driven_adapters/repository/person_api.dart';
import 'package:flutter_practice_code/screens/simular_api/driven_adapters/repository_mock/person_api_mock.dart';
import 'package:flutter_practice_code/screens/simular_api/enum/enviorment.dart';

class SimpleProvider {
  late ApiGateway api;
  late Environment current;

  setEnvironment({required Environment environment}) {
    current = environment;
    if (environment == Environment.mock) {
      api = PersonApiMock();
    } else {
      api = PersonApi();
    }
  }

  String getLabelEnv() {
    switch (current) {
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
