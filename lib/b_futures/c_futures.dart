void main() {
  // Future -> Incompleto, Completo com Sucesso, Completo com Erro.

  var valueV = Future((){
    // Função assincrona;
  }).then((value) {
    // Registrando função que será executada quando o futuro for completado com sucesso!    
  }).catchError((error) {
    // Registrando função que será executando quando o futuro for completado comerro!!
  }).whenComplete((){
    // Registrando a função que será executada SEMPRE (quando erro ou sucesso)!!!
  });
  print(valueV);  
}