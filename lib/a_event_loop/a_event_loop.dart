import 'dart:async';

void main(){
  print('Start main');
  Timer.run(() {
    scheduleMicrotask(() => print('New Microtask 1'));
    print('Event 1');
  });
  Timer.run(() => print('Event 2'));
  Timer.run(() => print('Event 3'));
  scheduleMicrotask(() => print('Microtask 1'));
  scheduleMicrotask(() => print('Microtask 2'));
  print('Finish main');
}

 

  