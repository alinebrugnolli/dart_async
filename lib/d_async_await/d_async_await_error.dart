
Future<void> main() async {
  print('Start');
  
  try {
    final id = await lookForId();
    final name = await lookForName(id);  
    print('The name is $name');    
  } catch (e) {
    print('it happened a error!');    
  }
  print('End');
}


Future<int> lookForId() async => 80;
Future<String> lookForName(int id) async {
  throw Exception();
  // return 'Rodrigo Rahman ($id);
}