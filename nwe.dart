import 'dart:math';

void main() {
  final random = Random(); // Create an instance of the Random class
  final randomNumber = generateRandomNumber(
      random); // Call a helper function to generate a random number
  final factorial = calculateFactorial(
      randomNumber); // Call a helper function to calculate the factorial of the random number

  print('Random number: $randomNumber');
  print('Factorial of $randomNumber: $factorial');

  if (isPrime(factorial)) {
    print('$factorial is a prime number');
  } else {
    print('$factorial is not a prime number');
  }

  final fibonacciSequence = generateFibonacciSequence(
      randomNumber); // Call a helper function to generate a Fibonacci sequence
  print('Fibonacci sequence of length $randomNumber: $fibonacciSequence');
}

int generateRandomNumber(Random random) {
  return random.nextInt(10) + 1; // Generate a random number between 1 and 10
}

int calculateFactorial(int n) {
  if (n == 0 || n == 1) {
    return 1; // Base case: factorial of 0 and 1 is 1
  }

  int factorial = 1;
  for (int i = 2; i <= n; i++) {
    factorial *= i; // Multiply factorial by each number from 2 to n
  }

  return factorial;
}

bool isPrime(int number) {
  if (number <= 1) {
    return false; // Numbers less than or equal to 1 are not prime
  }

  for (int i = 2; i <= sqrt(number); i++) {
    if (number % i == 0) {
      return false; // If the number is divisible by any integer up to its square root, it's not prime
    }
  }

  return true;
}

List<int> generateFibonacciSequence(int length) {
  List<int> sequence = [];

  if (length >= 1) {
    sequence.add(0); // First Fibonacci number is 0
  }
  if (length >= 2) {
    sequence.add(1); // Second Fibonacci number is 1
  }

  for (int i = 2; i < length; i++) {
    int nextNumber = sequence[i - 1] +
        sequence[i -
            2]; // Calculate the next Fibonacci number by adding the previous two numbers
    sequence.add(nextNumber);
  }

  return sequence;
}
