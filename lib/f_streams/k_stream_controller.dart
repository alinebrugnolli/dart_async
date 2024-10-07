import 'dart:async';

Future<void> main() async {

  print('Inicio Stream Controller');
  final streamController = StreamController<Pessoa>.broadcast();
  final inStream = streamController.sink;
  final outStream = streamController.stream;

  outStream
    .listen((pessoa) {
      print('Seja bem vindo ${pessoa.nome}');      
    });

  var numeros = List.generate(20, (index) => index);

  for (var numero in numeros) {
    print('Enviando número e $numero');
    inStream.add(Pessoa(nome: 'Rodrigo Rahman $numero'));
    // streamController.add(numero); => pode ser no lugar do inStream
    // await Future.delayed(Duration(milliseconds: 500));
  }
  print('Fim Stream Controller');
  await streamController.close();
}

class Pessoa {
  String nome;
  Pessoa({required this.nome});  
}