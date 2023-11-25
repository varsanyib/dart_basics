void main(List<String> arguments) {
  List<int> szamok = [14, 3, 2, 0];

  szamok.add(5);
  szamok.add(7);
  szamok.add(9);
  szamok.add(4);
  szamok.add(0);

  int i;
  print("A \"szamok\" lista ${szamok.length} darab számot tartalmaz!");
  print("Számok kiiratása for ciklussal: ");
  for (i = 0; i < szamok.length; i++) {
    print(szamok[i]);
  }
  print("Számok kiiratása foreach ( for in ) ciklussal: ");
  for (int szam in szamok) {
    print(szam);
  }

  print("Páros zámok kiiratása foreach ( for in ) ciklussal: ");
  for (int szam in szamok.where((x) => x.isEven)) {
    print(szam);
  }

  Map<String, int> konyvtarsz = {};

  konyvtarsz["teszt"] = 1;
  konyvtarsz["teszt2"] = 2;
  konyvtarsz["teszt3"] = 4;

  if (konyvtarsz.containsKey("teszt")) {
    konyvtarsz["teszt"] = konyvtarsz["teszt"]! + 1;
  } else {
    konyvtarsz["teszt"] = 1;
  }

  print("Kulcs-érték párok összesen: ${konyvtarsz.length}");
  for (MapEntry<String, int> x in konyvtarsz.entries) {
    print("${x.key} => ${x.value}");
  }

  konyvtarsz.remove("teszt3");

  print("Kulcs-érték párok törlés után, összesen: ${konyvtarsz.length}");
  for (MapEntry<String, int> x in konyvtarsz.entries) {
    print("${x.key} => ${x.value}");
  }
}
