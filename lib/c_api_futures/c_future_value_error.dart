void main(){

  Future(() {
    return 'Value X';
  }); // -> Incompleto vai ser executado ainda!!

  Future.value(''); // -> Sucesso
  Future.error(''); // -> Erro

}

Future<String> func1(){
  return Future.value('Any Success Value');
}