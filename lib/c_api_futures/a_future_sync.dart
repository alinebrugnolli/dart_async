void main(){
  print('Init Main');
  Future<String>.sync(() {
    print('Function Future executed');
    return 'Result Future';
  }).then(print);

  print('End Main');
}