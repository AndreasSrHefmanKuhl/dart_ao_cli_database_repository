import 'Data/login_user.dart';
import 'Data/registry.dart';

abstract class User {
  String userName;
  String password;

  User({required this.userName, required this.password});
}

Map<String, User> profile = {};

Future<void> registry(userName, password) async {}
void login_user() {}
