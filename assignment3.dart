import 'dart:ffi';

void main() {
  List<String> names = ['Ali', 'Sara', 'John', 'Ayesha'];
  print('All names: $names');
  
  List<String> days = ['Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday', 'Sunday'];
  print('Days of the week: ${days[6]}');

  List<dynamic> student = ['Tousif Ahmed','CLass 12', 'Numbers 101','A+', 95.5];
  print('Student Details: $student');

  List<int> numbers = [10, 20, 30, 40, 50];
  int smallest = numbers[0];
  for (int number in numbers) {
    if (number < smallest) {
      smallest = number;
    }
  }
  print(  'Smallest number: $smallest');
  print(  'Largest number: ${numbers.reduce((a, b) => a > b ? a : b)}');

  List <int> scores = [85, 92, 78, 90, 88];
  int maxScore = scores[0];
  for (int score in scores) { 
    if (score > maxScore) {
      maxScore = score;
    }
  } 

  print('Highest score: $maxScore'); 

  List <String> originallist = [ 'red', 'green', 'blue', 'yellow' ];
  List <String> reversedlist = originallist.reversed.toList();
  print('Original list: $originallist');
  print('Reversed list: $reversedlist');
  
}