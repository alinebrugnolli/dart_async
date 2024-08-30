void main() {
  func1()
    .then((value) => func2())
    .then((value) => func3(), onError: (error){
      print('Handling error func2');
      return func3();
    })   
    .then(print)
    .catchError((error) => print('Error in any of the calls'));
}

Future<String> func1() {
  print('func1');
  return Future.value('Doing something func1');
}

Future<String> func2() {
  print('func2');
  // throw Exception();
  return Future.error('Doing something func2');
}

Future<String> func3() {
  print('func3');
  return Future.value('Doing something func3');
}
