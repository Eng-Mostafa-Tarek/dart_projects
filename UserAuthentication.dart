import 'dart:io';

void main() {
  List<Map<String, String>> lst = [
    {"username": "mostafa", "pass": "000"},
    {"username": "tarek", "pass": "111"},
    {"username": "badawi", "pass": "222"},
  ];

  stdout.write("Enter username: ");
  String? username_in = stdin.readLineSync();

  stdout.write("Enter password: ");
  String? password_in = stdin.readLineSync();

  for (var user in lst) {
    if (user["username"] == username_in && user["pass"] == password_in) {
      print("Correct sign, welcome!");
      return;
    }
  }

  print("Incorrect username or password.");
}
