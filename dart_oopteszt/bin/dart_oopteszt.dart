// ignore: depend_on_referenced_packages
import "package:myLib/calc.dart";
// ignore: depend_on_referenced_packages
import "package:myLib/user.dart";

void main(List<String> arguments) {
  final int a = 5, b = 10, c = 25;
  print("a = $a, b = $b, c= $c");

  int eredmeny = Szamol.osszead(a, b);
  print("Szamol osztály összead függvény eredménye: $eredmeny");
  print("$a + $c = ${Szamol.osszead(a, c)}");
  print("$a - $c = ${Szamol.differencia(a, c)}");
  print("$a * $c = ${Szamol.szoroz(a, c)}");
  print("$a / $c = ${Szamol.oszt(a, b)}");
  print("$a % $c = ${Szamol.moduloOszt(a, c)}");

  User felhasznalo = User("Kiss Pista", 20);
  print("Felhasználó: ${felhasznalo.nev}, életkor: ${felhasznalo.kor}");
  print(
      "${felhasznalo.nev} számára generált random azonosító: ${felhasznalo.azonosito()}");
}
