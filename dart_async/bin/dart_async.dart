void main(List<String> arguments) {
  print("Első sor");
  getDelayedMessage().then((value) => print(value));
  print("Második sor");
  print("Harmadik sor");
}

Future<String> getDelayedMessage() async {
  String st = "Késletetett üzenet!";
  return Future.delayed(Duration(seconds: 5), () => st);
}
