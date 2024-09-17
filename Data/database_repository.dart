import '../Models/User.dart';
import '../Models/Messages.dart';

abstract class DatabaseRepository {
  // Alle vorhandenen User zurückgeben.
  List<String> getAllUsers();
  // Einen User zur App hinzufügen (registieren) (addUser / createUser)

  void registerUser(String name, String password, String email);
// zum registrieren eiones User
  void deleteUser(User user);
  // code zum Löschen eines Users
  bool islogIn(User user);

  // Code für den logIn eines User
  String sendMessage(Messages message);
  // zum senden einer Message

  List<String> deleteMessage(List<String> messages, int index);

  // Code zum schreriben und ändern einer Message
  void botFace();
  // Code fürs Gesicht des Bots

  void botChat(bool isBotChatRun, String userInp);
  // Code für den Chat mit dem Bot inklusive listen zurm Verständniss
}
