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

// Question No 3: Reversed List without changing original list

List <String> Colors = [ 'Red', 'Green', 'Blue', 'Yellow', 'Purple' ];
List <String> ReversedColors = Colors.reversed.toList();
print('Original Colors List: $Colors');
print('Reversed Colors List: $ReversedColors');

// Question No 4: Take unique integer

List <int> Numbers = [ 4, 3 , 2, 4, 1, 3, 2, 5, 1 ];
List <int> UniqueNumbers = [];

for (int number in Numbers){
  if (!UniqueNumbers.contains(number)) {
    UniqueNumbers.add(number);
  }
}
print('Original Numbers List: $Numbers');
print('Unique Numbers List: $UniqueNumbers');
}