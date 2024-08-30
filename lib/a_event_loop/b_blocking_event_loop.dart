import 'dart:io';

void main() {
  print('Starting Main');
  print(temperatureCurrent());
  print(temperatureTomorrow());
  print('Ending Main');
}

String temperatureCurrent() {
  sleep(const Duration(seconds: 1)); 
  return 'Today is turning 30';
}

String temperatureTomorrow() {
  sleep(const Duration(seconds: 2)); 
  return 'Tomorrow will make 34';
}