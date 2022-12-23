class Person {
  final String name;
  final String lastName;
  final int age;

  Person({
    required this.name,
    required this.lastName,
    required this.age,
  });

  factory Person.fromJson(Map<String, dynamic> jsonParsed) {
    return Person(
      age: jsonParsed["edad"],
      lastName: jsonParsed["apellido"],
      name: jsonParsed["nombre"],
    );
  }
}
