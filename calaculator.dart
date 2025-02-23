import 'dart:io';

void main() {
  print('pls Enter your name: ');
  var name = stdin.readLineSync();
  print('hello: $name');
  print('Enter num1');
  var num1 = stdin.readLineSync();
  int enum1 = int.parse(num1!);
  print('Enter the opreator');
  var op = stdin.readLineSync();
  print('Enter num2');
  var num2 = stdin.readLineSync();
  int enum2 = int.parse(num2!);
  switch (op) {
    case '+':
      print('result = ');
      print((enum1 + enum2));
      break;
    case '-':
      print('result = ');
      print((enum1 - enum2));
      break;
    case '*':
      print('result = ');
      print((enum1 * enum2));
      break;
    case '/':
      print('result = ');
      print((enum1 / enum2));
      break;
    default:
      print("error");
  }
}
