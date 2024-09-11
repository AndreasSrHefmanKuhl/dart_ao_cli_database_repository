class User {
  String name;
  String lastName;
  DateTime birthday;
  String email;
  String password;

  User(
      {required this.name,
      required this.lastName,
      required this.password,
      required this.birthday,
      required this.email});

  void botChat(userInp) {}
  void register(name, lastName, password, birthday, email) {}
  void logIn(email, password) {}
}

Map<String, User> profile = {};

void botChat(userInp) {}
void register(name, lastName, password, birthday, email) {}
void logIn(email, password) {}
