Future<void> main() async {
  print('Start');
  final names =  ['Rodrigo', 'Luana', 'Guilherme', 'Valentina'];
   
  //! Não respeita await, não deve ser utilizado nesse caso.
  // names.forEach(treatSalutation);

  // 1
  // for (var name in names) {
  //   await treatSalutation(name);    
  // }
   
  // 2 
  // await Future.forEach<String>(names, (name) async {
  //   await treatSalutation(name);
  // });
  
  // 3 - mostra todas as respostas
  final namesFuture = names.map((name) => salutation(name),).toList();

  final namesProcessed = await Future.wait(namesFuture);

  print(namesProcessed);

  print('End');
}

Future<void> treatSalutation(String name) async {
  final salutationName = await salutation(name);
  print(salutationName);
}

Future<String> salutation(String name) async{
  print('Start salution $name');
  return Future.delayed(Duration(seconds: 1), () {
    print('End Salutation name: $name');
    return 'Hello $name';
  });
}