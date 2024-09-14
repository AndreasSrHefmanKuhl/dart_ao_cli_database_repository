import '../Models/Messages.dart';
import '../Models/User.dart';
import '../Models/bot Kopie.dart';

import '../Data/database_repository.dart';

class MockDatabase implements DatabaseRepository {
  // Der Programmierer soll von außen keinen direkten Zugriff haben.
  List<User> _users = [
    User(
        name: "Andreas",
        password: "passwort",
        lastName: 'Kuhl',
        birthday: DateTime(87, 30, 10),
        email: 'hefbolzen@gmail.com')
  ];

  List<Messages> _messages = [
    Messages(
      sender: '',
      receiver: '',
    )
  ];

  @override
  List<User> getAllUsers() {
    return _users;
  }

  @override
  // ignore: override_on_non_overriding_member
  void addUser(
    String newUserName,
    String newPassword,
    DateTime newBirthday,
    String newLName,
  ) {
    User newUser = User(
        name: newUserName,
        password: newPassword,
        lastName: newLName,
        birthday: newBirthday,
        email: '');
    _users.add(newUser);
  }

  @override
  bool checkUserCredentials({
    required String userName,
    required String password,
  }) {
    for (User currentUser in _users) {
      if (currentUser.userName == userName) {
        if (currentUser.password == password) {
          return true;
        } else {
          return false;
        }
      }
    }

    return false;
  }

  @override
  void editUser(User user) {
    // TODO: implement editUser
  }

  @override
  bool checkSolution(Problem problem, String solution) {
    // TODO: implement checkSolution
    throw UnimplementedError();
  }

  @override
  List<Problem> getAllProblems() {
    // TODO: implement getAllProblems
    throw UnimplementedError();
  }

  @override
  Problem getNextProblem() {
    // TODO: implement getNextProblem
    throw UnimplementedError();
  }

  @override
  void botChat(Bot bot) {
    // TODO: implement botChat
  }

  @override
  void botFace() {
    // TODO: implement botFace
  }

  @override
  void delUser(User user) {
    // TODO: implement delUser
  }

  @override
  void editMsg(String newContent) {
    // TODO: implement editMsg
  }

  @override
  void logIn(String name, String password) {
    // TODO: implement logIn
  }

  @override
  void recvMsg(Messages message) {
    // TODO: implement recvMsg
  }

  @override
  void registerUser(User user) {
    // TODO: implement registerUser
  }

  @override
  void replyMsg(String replyContent) {
    // TODO: implement replyMsg
  }

  @override
  void sendMsg(Messages message) {
    // TODO: implement sendMsg
  }
}
