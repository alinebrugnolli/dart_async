import 'dart:async';

Future<void> main() async {
  try {
  final message = await searchSomething(0);
  print('Message: $message'); 
} catch (e, s) {
  print(e);
  print(s);  
}
}

Future<String> searchSomething(int number) {
  final completer = Completer<String>();

  Timer(Duration(seconds: 2), () {
    if(number == 0){
      completer.complete('Number sent with success');
    }else{
      completer.completeError('Number sent with error', StackTrace.current);
    }
  });

  return completer.future;
}