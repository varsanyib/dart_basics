void main(List<String> arguments) {
  //Kiírás
  print("Teszt kiírás");

  //Változók
  String szoveg;
  szoveg = "Teszt";
  print(szoveg);

  String szoveg2 = " üzenet!";
  print(szoveg + szoveg2);
  String szovegOsszefuzes = szoveg + szoveg2;
  print(szovegOsszefuzes);

  int szam1 = 5;
  int szam2 = 10;
  int szamOsszeg = szam1 + szam2;
  double szam3 = 9.2;
  print("A(z) $szam1 és $szam2 összege: $szamOsszeg");
  print("Tört szám értéke: $szam3");

  final double szamKonstans = 7.5;
  print("Konstans értéke: $szamKonstans");
  print("$szamKonstans + $szam1 = ${szamKonstans + szam1}");
  print("$szamKonstans - $szam1 = ${szamKonstans - szam1}");
  print("$szamKonstans * $szam1 = ${szamKonstans * szam1}");
  print("$szamKonstans / $szam1 = ${szamKonstans / szam1}");
  print("$szamKonstans % $szam1 = ${szamKonstans * szam1}");

  bool paros = szam1.isEven;
  bool paratlan = szam1.isOdd;

  print("$szam1 páros? $paros");
  print("$szam1 páratlan? $paratlan");

  print("$szam1 páros? ${paros == true ? "igen" : "nem"}");
  print("$szam1 páratlan? ${paratlan == true ? "igen" : "nem"}");

  if (szam1 % 2 == 0) {
    print("A $szam1 szám kettővel oszható, ezért páros!");
  } else {
    print(
        "A $szam1 szám nem osztható kettővel, maradék nélkül, ezért páratlan!");
  }

  int i;
  for (i = 0; i < 3; i++) {
    print("For ciklus $i indexe.");
  }

  i = 0;
  while (i < 3) {
    print("While ciklus $i indexe.");
    i++;
  }

  i = 0;
  do {
    print("Do while ciklus $i indexe.");
    i++;
  } while (i < 3);

  if (arguments.isEmpty) {
    print("Az argumentumok listája üres!");
  } else {
    print("Az argumentumok száma a program indításával: ${arguments.length}");

    for (i = 0; i < arguments.length; i++) {
      print("${i + 1}. argumentum: ${arguments[i]}");
    }
  }
}
