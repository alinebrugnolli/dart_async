import 'dart:async';

void main() {
  print('Starting main');
  func1(1);
  func1(2);
  func1(3);
  func2();
  print('Ending main');
}

void func1(int i) {
  print('Starting func1');
  Future.delayed(Duration(seconds: 2), () => print('Doing something complex func $i'));
  print('Ending func1');
}

void func2() {
  print('Starting func2');
  Future.delayed(Duration(seconds: 1), () => print('Doing something complex func 2'));
  print('Ending func2');
}