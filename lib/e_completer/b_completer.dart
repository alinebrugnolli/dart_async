import 'dart:async';

Future<void> main() async {
  final user = UserRepository();
  user.saveCommon((success){
    print('Success $success');
  }, (error){
    print('Error $error');
  });

  try {
    final success = await user.saveCompleter();
    print('Success completer: $success');
  } catch (e) {
    print('Error completer: $e');
  }
}

class UserRepository {
  void saveCommon(void Function(String) callbackSuccess,
      void Function(String) callbackError) {
    Timer(Duration(seconds: 2), () {
      try {
        throw Exception();
        // callbackSuccess('User save with success');
      } catch (e) {
        callbackError('Error');
      }
    });
  }

  Future<String> saveCompleter(){
    final completer = Completer<String>();
    Timer(Duration(seconds: 2), () {
      try {
        // throw Exception();
        completer.complete('User save with success');
      } catch (e) {
        completer.completeError('Error');
      }
    });
    return completer.future;
  }
}
