void main() {
  int limit = 10; // input number
  int a = 0, b = 1;

  print("Fibonacci sequence up to $limit:");

  for (int i = 0; a <= limit; i++) {
    print(a); // print current Fibonacci number
    int next = a + b; // calculate next number
    a = b; // shift values
    b = next;
  }
}
