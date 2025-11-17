import 'dart:io';

void main() {
  // Q1: Fibonacci sequence up to a given number
  int limit = 10;
  int a = 0, b = 1;
  print("Q1: Fibonacci sequence up to $limit:");
  for (int i = 0; a <= limit; i++) {
    print(a);
    int next = a + b;
    a = b;
    b = next;
  }

  // Q2: Find largest element in a list
  List<int> numbers = [3, 9, 1, 6, 4, 2, 8, 5, 7];
  int largest = numbers[0];
  for (int i = 1; i < numbers.length; i++) {
    if (numbers[i] > largest) {
      largest = numbers[i];
    }
  }
  print("\nQ2: Largest element in the list: $largest");

  // Q3: Multiplication table of a given number
  int number = 5;
  print("\nQ3: Multiplication table of $number:");
  for (int i = 1; i <= 10; i++) {
    print("$number x $i = ${number * i}");
  }

  // Q4: Check if a string is a palindrome
  String text = "radar";
  if (isPalindrome(text)) {
    print("\nQ4: '$text' is a palindrome");
  } else {
    print("\nQ4: '$text' is not a palindrome");
  }

  // Q5: Pattern like right-angle triangle with repeated numbers
  int rows = 4;
  print("\nQ5: Right-angle triangle pattern:");
  for (int i = 1; i <= rows; i++) {
    String line = '';
    for (int j = 1; j <= i; j++) {
      line += '$i';
    }
    print(line);
  }

  // Q6: Print numbers greater than 5 using for loop and if-else
  List<int> inputList = [2, 7, 4, 9, 1, 6, 3, 8];
  print("\nQ6: Numbers greater than 5:");
  for (int i = 0; i < inputList.length; i++) {
    if (inputList[i] > 5) {
      print(inputList[i]);
    }
  }

  // Q7: Count vowels in a string using for loop and if-else
  String sentence = "Flutter is awesome";
  int vowelCount = 0;
  for (int i = 0; i < sentence.length; i++) {
    String ch = sentence[i].toLowerCase();
    if (ch == 'a' || ch == 'e' || ch == 'i' || ch == 'o' || ch == 'u') {
      vowelCount++;
    }
  }
  print("\nQ7: Number of vowels in '$sentence': $vowelCount");
}

// Helper function for Q4
bool isPalindrome(String str) {
  String reversed = str.split('').reversed.join('');
  return str == reversed;
}
