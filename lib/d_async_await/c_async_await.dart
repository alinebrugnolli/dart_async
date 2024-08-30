
Future<int> lookForId() async => 80;
Future<String> lookForName(int id) async => 'Rodrigo Rahman ($id)';

// Pode ser feito assim:
Future<String> lookForUserName() {
  return lookForId().then((id){
    return lookForName(id).then((name){
      return 'User: $name';
    });
  });
}

// Porém é mais utilizado assim:
Future<String> lookForUserNameAwait() async {
  final id = await lookForId();
  final name = await lookForName(id);
  return 'User: $name';
}

Future<void> main() async {
  print('Start');
  final nameUser = await lookForUserNameAwait();
  print(nameUser);
  print('End');
}