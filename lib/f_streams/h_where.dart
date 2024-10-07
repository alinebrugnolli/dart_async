Future<void> main() async{
  
  print('Início');
  final interval = Duration(seconds: 2);
  var stream = Stream<int>.periodic(interval, callback);

  stream = stream.where((numero) => numero % 6 == 0).take(3);

  stream.listen((numero) {
    print('Listen value: $numero');
  });
  
  print('FIM');
}

int callback(int value) {
  print('Callback valor que chegou é $value');
  return (value +1) * 2;
}

