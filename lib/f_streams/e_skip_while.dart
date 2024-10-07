Future<void> main() async{
  
  print('Início');
  final interval = Duration(seconds: 2);
  var stream = Stream<int>.periodic(interval, callback);

  stream = stream.take(5).skipWhile((numero){
    print('Número que chegou na skipWhile $numero');
    return numero < 5;
  });
  // await for
  await for(var i in stream) {
    print('O número que chegou no await for é $i');
  }

  print('FIM');
}

int callback(int value) {
  print('Callback valor que chegou é $value');
  return (value +1) * 2;
}