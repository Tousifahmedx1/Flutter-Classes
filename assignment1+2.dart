void main() {
  
  // Pass or fail check

  int marks1 = 45;
  double attendance = 80.0;

  if (marks1 > 40 && attendance > 75) {
    print("The student has Passed");
  } else {
    print("The student has Failed");
  }
  
  // Checking the Condition is True
  
  int a = 30;
  int b = 60;
  if (a < 50 && a < b) {
    print("both conditions are true");
  } else {
    print("both conditions are not true");
  }

  // Check the Student Result

  String StudentName = "Robert";
  int Subject1 = 78;
  int Subject2 = 45;
  int Subject3 = 62;
  
  // Count the total marks and check the percentage
  int TotalMarks = (Subject1 + Subject2 + Subject3);
  double percentage = (TotalMarks /300)*100;

  // For Output
  print("Name $StudentName");
  print("Math $Subject1");
  print("Physics $Subject2");
  print("Computer Science $Subject3");
  print("Total Marks $TotalMarks");
  print("Percentage: ${percentage.toStringAsFixed(2)}%");

  // Checking the Student Grade

  int marks2 = 85;

  if (marks2 >= 90) {
  print("Grade A+");
} else if ( marks2 >= 80) {
  print("Grade A");
} else if ( marks2 >= 70) {
  print("Grade B");
 } else if ( marks2 >= 60) {
  print("Grade C");
} else if ( marks2 >= 50) {
  print("Grade D");
} else {
  print("Fail");
}
  String studentName2 = "Robb";
  int math = 85;
  int english = 78;
  int science = 90;
  int computer = 88;

  int totalMarks2 = math + english + science + computer;
  double percentage2 = (totalMarks2 / 400) * 100;

  print("Student Name: $studentName2");
  print("Math: $math");
  print("English: $english");
  print("Science: $science");
  print("Computer: $computer");
  print("Total Marks: $totalMarks2");
  print("Percentage: ${percentage2.toStringAsFixed(2)}%");

 // Task 1: Compare two ages
  int age1 = 20;
  int age2 = 25;

if (age1 > age2) {
  print("Age1 is older and Age2 is younger");
} else if (age2 > age1) {
  print("Age2 is older and Age1 is younger");
} else {
  print("Both ages are equal");
}

  // Task 2: Check if a number is positive, negative, or zero
int number = -5;

if (number > 0) {
  print("The number is positive");
} else if (number < 0) {
  print("The number is negative");
} else {
  print("The number is zero");
}

  // Task 3: Check if it's a square or rectangle

  int length = 10;
  int breadth = 10;
if (length == breadth) {
  print("The shape is a square");
} else {
  print("The shape is a rectangle");
}

  // Task 4: Temperature message
int temperature = 42;

if (temperature < 0) {
  print("Freezing weather");
} else if (temperature >= 0 && temperature < 10) {
  print("Very Cold weather");
} else if (temperature >= 10 && temperature < 20) {
  print("Cold weather");
} else if (temperature >= 20 && temperature < 30) {
  print("Normal in Temperature");
} else if (temperature >= 30 && temperature < 40) {
  print(" Its Hot temperature");
} else if (temperature >= 40) {
  print("Its Very Hot temperature");
} else {
  print("It's cold");
}
}