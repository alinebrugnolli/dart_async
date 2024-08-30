import 'dart:async';

Future<void> main() async {
  // final waiting = insertingSomethingVerySlow();
  print(DateTime.now().toIso8601String());
  // waiting
  //   .timeout(Duration(seconds: 1), onTimeout: () {
  //     print('Finish with Timeout');
  //   },)
  //   .then((value) {
  //     print('Finish Execution');
  //   })
  //   .catchError((error){
  //     print('Finish with error: $error');
  // });

  try {
  final waiting = await insertingSomethingVerySlow().timeout(Duration(seconds: 1));  
} on TimeoutException catch (e) {
  print('Finish with Timeout $e');  
}
}


Future<void> insertingSomethingVerySlow() {
  return Future.delayed(Duration(seconds: 3), () {
    print('Finish the insert.');
    print(DateTime.now().toIso8601String());
  });
}