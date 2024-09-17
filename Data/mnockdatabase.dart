

class MockDatabase implements DatabaseRepository {
  // Der Programmierer soll von außen keinen direkten Zugriff haben.
  Map<User,String > _users = [
    User(
        name: "Andreas",
        password: "passwort",
       
        email: 'hefbolzen@gmail.com')
  ] as Map<User, String>;

  @override
    void register(
    String newUserName,
    String newPassword,
    String newMail ) 
    
    {User newUser = User(
        name: newUserName,
        password: newPassword,
        email: newMail);
    _users.addAll(newUser);}

  @override
  bool islogIn(){} 
  
void registerUser(String name, String password, String email) {
  if (_users.containsKey(name)|| _users.containsKey(password)|| _users.containsKey(email) ) {
    print('Benutzername bereits vergeben.');
    return;
  }

  
  _users[name] = User(name: '$name', password: '$password', email: '$email') as String;
  print('Benutzer erfolgreich registriert.');
}

  @override
  void checkFull(User user) {
      if (user.name.isEmpty || user.password.isEmpty|| user.email.isEmpty) {
      throw ArgumentError('Name, last name, and email cannot be empty.');}

  

 
 List<Messages> message = [''];

  

  void sendMessage(String content, String timestamp) {
    var messages = Messages( sender,  receiver:);
    Messages message = messages;
    message.add(message);
  }

  
  
  @override
  void updateMessage(Messages message, String newContent, String newTimestamp) {
    for (Messages messageSearch in message) {
      if (messageSearch == message) {
        Messages.content = newContent;
       Messages.
        break;
      }
    }
  }

  @override
  void newChat(List<Messages> messages) {}

  @override
  void createChat(String message, String receiver) {}

  