void main(){
  print('Init Main');

  Future<String>(() => 'Normal Future').then(print);
  Future<String>.microtask(() => Future.error('Error when executing'))
    .then(print)
    .catchError(print);

  print('End Main');
}