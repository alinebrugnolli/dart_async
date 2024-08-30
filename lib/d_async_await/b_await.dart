void main(){
  final totalStudents = searchTotalStudents();
  totalStudents.then((totalStudentsValue) {
    print('Total of students of ADF is $totalStudentsValue');
  });
  print('Answer: $totalStudents');
}

Future<int> searchTotalStudents() async {
  print('This point of method is synchronous');
  final searchTotalStudents = await Future.value(887);
  print('This point of method is after of Await');
  return searchTotalStudents;
}