import 'dart:io';
import 'dart:math';

void main() {
  final random = Random();
  int target = random.nextInt(100) + 1;
  Stopwatch stopwatch = Stopwatch()..start();

  int guess;
  do {
    stdout.write("Guess a number between 1 and 100: ");
    guess = int.parse(stdin.readLineSync());

    if (guess > target) print("Too high.");
    else if (guess < target) print("Too low.");
  } while (guess != target);

  stopwatch.stop();
  print("Correct! It took ${(stopwatch.elapsedMilliseconds / 1000).toStringAsFixed(2)} seconds.");
}
