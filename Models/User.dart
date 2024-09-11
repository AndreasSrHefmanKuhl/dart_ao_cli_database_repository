class User {
  String name;
  String lastName;
  String password;
  DateTime birthday;

  User(
      {required this.name,
      required this.lastName,
      required this.password,
      required this.birthday});
}

Map<String, User> profile = {};
