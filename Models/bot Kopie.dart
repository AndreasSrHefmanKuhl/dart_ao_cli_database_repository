class Bot {
  String name;
  bool isBotRun;
  Bot({this.name = 'Botti', this.isBotRun = true});

  void botFace() {
    print('     ****     ****  ');
    print('     (  )     (  )  ');

    print('        /    ');
    print('       /___    ');

    print('        _____/   ');

    print(
        "Hi! Ich bin Botti.Ich bin zwar nicht der klügste aber ich geb alles!");
  }

  void botChat(String uInp) {}
}
