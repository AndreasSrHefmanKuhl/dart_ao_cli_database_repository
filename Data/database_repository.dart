import '../Models/bot Kopie.dart';
import '../Models/User.dart';
import '../Models/Messages.dart';


abstract class DatabaseRepository {




  // Alle vorhandenen User zurückgeben.
  List<String> getAllUsers();
  // Einen User zur App hinzufügen (registieren) (addUser / createUser)
  
  void registerUser(User user) {}
// zum registrieren eiones User
  void delUser(User user){}
  // code zum Löschen eines Users
  void logIn(String name, String password){}
  // Code für den logIn eines User

  void editUser(User user){}
// Code zum editieren eines Users

  void sendMsg(Messages message) {}
  // zum senden einer Message
  
  void recvMsg(Messages message) {}
  // Code zum empfangen einer Message
  void replyMsg(String replyContent){}
  // Code zum antworten einer Message
  void editMsg(String newContent) {}
  // Code zum schreriben und ändern einer Message
  void botFace(){}
  // Code fürs Gesicht des Bots

  void botChat(Bot bot){}
  // Code für den Chat mit dem Bot inklusive listen zurm Verständniss
