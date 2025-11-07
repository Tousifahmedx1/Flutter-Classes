void main () {
 
//  Question No 1: Remove Duplicates from a List

  List <String> AllStudents = [ 'Ali', 'Sara', 'John', 'Ayesha', 'Ali', 'Sara', 'John', 'Ayesha'  ];
  List <String> NewStudents = []; 

  for ( String Student in AllStudents) {
    if (!NewStudents.contains(Student)) {
      NewStudents.add(Student);
    }
  }

  print('All Students: $AllStudents');
  print('New Students (Duplicates Removed): $NewStudents');
}