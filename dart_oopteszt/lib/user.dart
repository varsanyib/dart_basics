import 'dart:math';

class User {
  int? _azonosito; // Privát adattag
  String? nev; // Publikus
  int? kor; // Publikus
  final Random _rnd = Random((DateTime.now()
      .millisecondsSinceEpoch)); // Privát random szám generátor SEED értékkel

  int azonosito() {
    return _azonosito!; // Így olvasható ki a privát adattag!
  }

  //Konstruktor
  User(String nevBe, int korBe) {
    if (nevBe.isEmpty || kor == 0) {
      throw Exception("HIBA! A név vagy a kor nem lehet üres!");
    }
    nev = nevBe;
    kor = korBe;
    _azonosito = _rnd.nextInt(1000);
  }
}
