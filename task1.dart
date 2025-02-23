import 'dart:io';

void main() {
  List<Map<String, String>> dataBase = [
    {"username": "ali", "pass": "000"},
    {"username": "mostafa", "pass": "111"},
    {"username": "omar", "pass": "222"},
  ];

  int attempts = 3;

  while (attempts > 0) {
    stdout.write("Enter username: ");
    String? username_in = stdin.readLineSync()?.trim();

    stdout.write("Enter password: ");
    String? password_in = stdin.readLineSync()?.trim();

    if (username_in == null ||
        username_in.isEmpty ||
        password_in == null ||
        password_in.isEmpty) {
      print("Username and password cannot be empty");
      continue;
    }

    var user = dataBase.firstWhere(
      (user) => user["username"] == username_in && user["pass"] == password_in,
      orElse: () => {},
    );

    if (user.isNotEmpty) {
      print("Login successful! Welcome, $username_in.");
      return;
    } else {
      attempts--;
      print("Invalid username or password. Attempts left: $attempts");
    }
  }

  print("Too many failed attempts. Try again later.");
}
