import '';

void registerUser(String username, String password) {
  if (profile.containsKey(username)) {
    print('Benutzername bereits vergeben.');
    return;
  }

  profile[username] = User(username, password);
  print('Benutzer erfolgreich registriert.');
}
