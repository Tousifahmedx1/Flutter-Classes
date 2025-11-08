import 'dart:async';
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

// Question No 5: Sorted List

List <int> UnsortedNumbers = [ 42, 23, 16, 15, 8, 4 ];
List <int> SortedNumbers = List.from(UnsortedNumbers); 
SortedNumbers.sort();
print('Original Unsorted Numbers List: $UnsortedNumbers');
print('Sorted Numbers List: $SortedNumbers');

// Question No 6: Taking Positive Numbers

List <int> MixedNumbers = [ -10, 15, -20, 25, -30, 35 ];
List <int> PositiveNumbers = MixedNumbers.where ((number)=> number >0).toList();
print('Original Mixed Numbers List: $MixedNumbers');
print('Positive Numbers List: $PositiveNumbers');

// Question No 7: Taking Even Numbers

List <int> MoreNumbers = [ 1, 2, 3, 4, 5, 6, 7, 8, 9, 10 ];
List <int> EvenNumbers = MoreNumbers.where( (number)=> number %2 ==0).toList();
print('Original Numbers List: $MoreNumbers');
print('Even Numbers List: $EvenNumbers');

// Question No 8: Making Eligible Criteria

Map <String, dynamic> Student = {
  'Name': 'Ahmed',
  'Age': 20,
  'IsStudent': true,
  };

  if (Student ['Age'] >= 18 && Student ['IsStudent'] == true) {
    print('${Student['Name']} is eligible.');
  } else {
    print('${Student['Name']} is not eligible.');
  } 

  // Question No 9: Checking Product Stock

  Map <String, int> ProductStock = {
    'Laptop': 5,
    'Smartphone': 0,
    'Headphones': 10,
    'Monitor': 2,
  };
  String productToCheck = 'Smartphone';
  if (ProductStock.containsKey(productToCheck)) {
    if (ProductStock[productToCheck]! > 0) {
      print('$productToCheck is in stock.');
    } else {
      print('$productToCheck is out of stock.');
    }
  } else {
    print('$productToCheck does not exist in the inventory.');
  }

// Question No 10: Car Match Criteria

  Map<String, dynamic> car = {
    'brand': 'Toyota',
    'color': 'Red',
    'isSedan': true,
  };

  if (car['isSedan'] == true && car['color'] == 'Red') {
    print('Match');
  } else {
    print('No match');
  }

// Question No 11: User Role Check
  Map<String, dynamic> user = {
    'name': 'Tousif',
    'isAdmin': true,
    'isActive': true,
  };

  if (user['isAdmin'] == true && user['isActive'] == true) {
    print('Active admin');
  } else {
    print('Not an active admin');
  }

// Question No 12: Shopping Cart Product Check
  Map<String, int> cart = {
    'Banana': 6,
    'Orange': 3,
    'Apple': 4,
    'Grapes': 2,
  };

  // Step 2: Check if 'Apple' exists in the cart
  if (cart.containsKey('Apple')) {
    print('Product found');
  } else {
    print('Product not found');
  }

// Question No 13: Accessing List and Map Elements

  List<String> tasks = ['Study Dart', 'Build App', 'Sleep'];
  Map<String, dynamic> user1 = {
    'name': 'Tousif',
    'isActive': true,
  };

  print('First task: ${tasks[0]}');
  print('User name: ${user1['name']}');


  // Question No 14: Incrementing a Number

  int num = 5;
  num++; // ✅ Valid
  print(num); // Output: 6




// Question No 15: Difference between a++ and a = a + 1
  int a = 5;

  // Using a++
  int result1 = a++; // result1 gets 5, then a becomes 6
  print('After a++: result1 = $result1, a = $a');

  // Resetting a
  a = 5;

  // Using a = a + 1
  int result2 = a = a + 1; // result2 gets 6, a becomes 6
  print('After a = a + 1: result2 = $result2, a = $a');
}




































