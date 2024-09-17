import '../Models/User.dart';
import '../Models/Messages.dart';

abstract class DatabaseRepository {
  // Alle vorhandenen User zurückgeben.
  List<String> getAllUsers();
  // Einen User zur App hinzufügen (registieren) (addUser / createUser)

  void registerUser(String name, String password, String email);
// zum registrieren eiones User
  void delUser(User user);
  // code zum Löschen eines Users
  bool islogIn(User user);

  // Code für den logIn eines User
  String sendMsg(Messages message);
  // zum senden einer Message
  String replyMsg(String receiver, String newMsg);
  // Code zum antworten einer Message

  List<String> delMsg(List<String> messages, int index) {
    if (index < 0 || index >= messages.length) {
      throw RangeError('Index out of range');
    }

    return List.from(messages)..removeAt(index);
  }

  // Code zum schreriben und ändern einer Message
  void botFace();
  // Code fürs Gesicht des Bots

  void botChat(bool isBotChatRun, String userInp);
  // Code für den Chat mit dem Bot inklusive listen zurm Verständniss
}
