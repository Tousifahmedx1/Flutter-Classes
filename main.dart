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
}
