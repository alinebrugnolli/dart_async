void main(){

  final name = methodAsyncWithoutAsync();
  final name2 = methodAsync();

  print(name2);

  name.then(print).catchError(print);

  methodAsyncVoid().whenComplete(() => print('Finish void'));
}

Future<String> methodAsyncWithoutAsync() {
  return Future.value('Rodrigo Rahman');
}

Future<String> methodAsync() async {
  return 'Rodrigo Rahman';
}

Future<void> methodAsyncVoid() async {
  
}