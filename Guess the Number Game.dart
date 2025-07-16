import 'dart:io';
import 'dart:math';

void main() {
  final random = Random();
  int target = random.nextInt(100) + 1;
  int maxAttempts = 20;

  print("You have $maxAttempts attempts to guess the number between 1 and 100.");

  for (int i = 1; i <= maxAttempts; i++) {
    stdout.write("Attempt $i: ");
    int guess = int.parse(stdin.readLineSync());

    if (guess == target) {
      print("Congratulations! You guessed it in $i attempts.");
      return;
    } else if (guess > target) {
      print("Too high.");
    } else {
      print("Too low.");
    }
  }

  print("Sorry! You couldn't guess it. The number was $target.");
}
