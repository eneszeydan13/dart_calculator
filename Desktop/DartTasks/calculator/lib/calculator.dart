library calculator;

import 'dart:io';

void main() {
  var calculation1 = calculate();
  print('Please enter the first number: ');
  calculation1.num1 = double.parse(stdin.readLineSync());
  print('Please enter the operator(*,/,+,-): ');
  calculation1.operator = stdin.readLineSync();
  print('Please enter the second number: ');
  calculation1.num2 = double.parse(stdin.readLineSync());
  double result;
  if (calculation1.operator == '+') {
    result = calculation1.sum();
  } else if (calculation1.operator == '*') {
    result = calculation1.multiple();
  } else if (calculation1.operator == '/') {
    result = calculation1.divide();
  } else if (calculation1.operator == '-') {
    result = calculation1.subtract();
  } else {
    print('You have entered an invalid operator!!!');
  }

  print('The result is : $result');
}

class calculate {
  double num1;
  double num2;
  String operator;
  double sum() => (num1 + num2);
  double multiple() => (num1 * num2);
  double divide() => (num1 / num2);
  double subtract() => (num1 - num2);
}

