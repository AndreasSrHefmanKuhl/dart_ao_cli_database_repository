import '../Models/User.dart';

bool loginUser(name, password) {
  User? user = profile[name];

  if (user != null && password == password) {
    print('Anmeldung erfolgreich!');
    // Hier würde man zum Hauptmenü wechseln (in einer Konsolenanwendung)
    // ... zum Beispiel:
    print('Was geht $name! :');
    return true;
  } else {
    print('Ungültige Anmeldedaten.');
    return false;
  }
}
