import '../../bot.dart';

class Bot {
  String userInp;
  bool isBotRun;
  Bot({required this.userInp, this.isBotRun = true});

  void botFace() {
    print('     ****     ****  ');
    print('     (  )     (  )  ');

    print('        /    ');
    print('       /___    ');

    print('        _____/   ');

    print(
        "Hi! Ich bin Botti.Ich bin zwar nicht der klügste aber ich geb alles!");
  }
   String? getAnsw(String uInpQ) {
        for (var entry in botLang()) {
          if (uInpQ.contains(entry)) {
            return entry.toString();
          }
        }
  botLang() {
    Map<List<String>, List<String>> niAnsw = {
      ['wetter', 'Wetter']: ["Mir geht es gut, danke! Und dir?"],
      ['dumm', 'Dumm']: ['Dumm ist der, der dummes tut!'],
      ['hobbies', 'Hobbies']: [
        'Ich mag es zu Stricken, und dem Gehörnten zu huldigen muahahahahahaaa'
      ],
      ['sinn des lebens', 'Sinn des Lebens']: [
        'das ist eine sehr gute Frage... die Antwort könnte deinen Horizont übersteigen.....42'
      ],
      ['witz', 'Witz']: [
        'gehen 2 Elefanten durch nen Tunnel, hat der andere am Ende auch ein Eis :p'
      ],
    };
    // weitere themen können sein... wer hat dich gebaut? ,was machst du?, Hobby?,
    //  erzähl mir einen witz. Was ist der Sinn des Lebens?(42)
    // implementierung von verschiedenen launen durch if else funktionsblock in klasse auslagern und dur
  }

  void botChat() {
    while (isBotRun) {
      //String userInp = stdin.readLineSync()!.toString();

      if (userInp.contains("beende") || userInp.contains("Beende")) {
        print("Bis zum nächsten Mal!");
        
      }

      // weitere themen können sein... wer hat dich gebaut? ,was machst du?, Hobby?,
      //  erzähl mir einen witz. Was ist der Sinn des Lebens?(42)
      // implementierung von verschiedenen launen durch if else funktionsblock in klasse auslagern und durch zusätzliche if reaktion simulieren .
      

      else if (userInp.contains['Wetter']) {
       print(niAnsw['Wetter'].randomElement()); 
      } else if (weather.any((element) => userInp.contains(element))) {
        print("Das Wetter ist heute schön, oder?");
      } else if (dumb.any((element) => userInp.contains(element))) {
        print("Dumm ist der, der dummes tut ; )... mein lieber Freund! ");
      } else if (actives.any((element) => userInp.contains(element))) {
        print(
            "Ich stricke am liebsten in meiner Freizeit! Die Ruhe und die Ausgeglichenheit dabei");
      } else if (sense.any((element) => userInp.contains(element))) {
        print("42!");
      } else {
        print("Das ist interessant. Kannst du mir mehr darüber erzählen?");
      }
    }
  }   
    
  
