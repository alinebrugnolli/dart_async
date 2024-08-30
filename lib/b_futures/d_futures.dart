void main() {
  // print('Taking the car to the mechanic.');  

  // Future<int>(() {
  //   // Função assincrona que vai fazer o orçamento da manutenção do nosso carro!
  //   return 10 ~/ 2;
  // }).then((budgetValue){
  //   print('The budget to fix the car is $budgetValue');
  // }).whenComplete(() => print('Finishing'));  
  
  // print('I went traveling.');  
  // Future<String>(() {
  //   // Indo para EUA
  //   throw Exception('Plane crashed');
  //   return 'Buying Macbook';
  // }).then((purchased){
  //   print('I bought my macbook');
  // }).catchError((error){
  //   print('BAD!! The plane crashed');
  // }).whenComplete(() => print('Finishing'));  

  // print('Leaving the mechanic.');

  // Future<int>(() {    
  //   return 10 ~/ 2;
  // }).then((value) => print('Calcutated value is $value'));

  // Future<int>(() {    
  //   return 10 ~/ 0;
  // }).then(
  //   (value) => print('Calcutated value is $value'),
  //   onError: (error) {
  //     print('An error occurred $error');
  //     throw Exception('Other error');
  //   }).catchError((error) {
  //     print('An error occurred in CatchError $error');
  //   });

    Future<int>(() {       
      return 10 ~/ 0;
  })
  .then((value) => print('Calcutated value is $value'))
  .catchError(
  (error){
    print('An error occurred in CatchError $error');
  },
  test: (error) => error is UnsupportedError,
  ).catchError(
    (error){
      print('An error occurred in CatchError2 $error');
    }
  );
}
