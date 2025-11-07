import 'dart:io';

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

// Question No 2: take N Value

List <String> Fruits = [ 'Apple', 'Banana', 'Mango', 'Orange', 'Pineapple', 'Grapes' ];
int N = 3;

if (N <= Fruits.length) {
  List <String> FirstNFruits = Fruits.sublist(0, N);
  print('Original Fruits List: $Fruits');
  print('First $N Fruits: $FirstNFruits');
} else {
  print('N is greater than the length of the list.');
  }
}