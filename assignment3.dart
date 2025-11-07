// import 'dart:ffi';
// import 'dart:io';
// void main() {
//   List<String> names = ['Ali', 'Sara', 'John', 'Ayesha'];
//   print('All names: $names');
  
//   List<String> days = ['Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday', 'Sunday'];
//   print('Days of the week: ${days[6]}');

//   List<dynamic> student = ['Tousif Ahmed','CLass 12', 'Numbers 101','A+', 95.5];
//   print('Student Details: $student');

//   List<int> numbers = [10, 20, 30, 40, 50];
//   int smallest = numbers[0];
//   for (int number in numbers) {
//     if (number < smallest) {
//       smallest = number;
//     }
//   }
//   print(  'Smallest number: $smallest');
//   print(  'Largest number: ${numbers.reduce((a, b) => a > b ? a : b)}');

//   List <int> scores = [85, 92, 78, 90, 88];
//   int maxScore = scores[0];
//   for (int score in scores) { 
//     if (score > maxScore) {
//       maxScore = score;
//     }
//   } 

//   print('Highest score: $maxScore'); 

//   List <String> originallist = [ 'red', 'green', 'blue', 'yellow' ];
//   List <String> reversedlist = originallist.reversed.toList();
//   print('Original list: $originallist');
//   print('Reversed list: $reversedlist');
  
//   List <int> numlist = [ 5, -10, -15, 20, 25 ];
//   List <int> positiveNumbers =numlist.where( (number) => number > 0).toList();
//   print('Positive numbers: $positiveNumbers');  

//   List <String> userElgibility = [ 'Alice', 'Bob', 'Charlie','Eligible', 'Diana' ];
//   userElgibility.removeWhere( (name) => name == 'Eligible' );
//   print('"Eligible user": $userElgibility');

//   // SELF TASK LOGIN SYSTEM
  
//   // step one we are creating a login system
//   Map <String, String> users = {
//     'tousif@gmail.com': 'tousif123',
//     'zaka@gmail.com': 'zaka123',
//     'raza@gmail.com': 'raza123',
//     'ahmed@yahoo.com': 'ahmed123',
//   }; 
//   // step 2 we are taking input from user email
//   stdout.write('Enter your email: ');
//   String? email = stdin.readLineSync();
//   // step 3 we are taking input from user password 
//   stdout.write('Enter your password: ');
//   String? password = stdin.readLineSync();
//   // step 4 we are checking if email and password are correct
//   if (users.containsKey(email) && users[email] == password) {
//     print('Login successful! Welcome, $email');
//   } else {
//     print('Invalid email or password. Please try again.');

//   }
// }