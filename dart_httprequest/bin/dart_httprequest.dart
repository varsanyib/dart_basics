import "package:libs/requests.dart" as req;

void main() async {
  print("Reqres.in lekérdezés teszt");

  print("\nGET: ");
  await req.get("https://reqres.in/api/users").then((value) => print(value));

  print("\nPOST: ");
  await req.post("https://reqres.in/api/users",
      {"name": "TesztElek", "age": "20"}).then((value) => print(value));

  print("\nPUT: ");
  await req.put("https://reqres.in/api/users/2",
      {"name": "TesztMark", "age": "16"}).then((value) => print(value));

  print("\nPATCH: ");
  await req.put("https://reqres.in/api/users/2",
      {"name": "TesztErno", "age": "24"}).then((value) => print(value));

  print("\nDELETE: ");
  await req
      .delete("https://reqres.in/api/users/2")
      .then((value) => print(value));
}
