Future<void> main() async{
  
  print('Início');
  final interval = Duration(seconds: 1);
  var stream = Stream<int>.periodic(interval, callback).take(5);
  stream = stream.asBroadcastStream();

  
  stream.listen((numero) {
    print('Listen 1 value: $numero');
  });
  
  stream.listen((numero) {
    print('Listen 2 value: $numero');
  });
  
  print('FIM');
}

int callback(int value) {
  print('Callback valor que chegou é $value');
  return (value +1) * 2;
}