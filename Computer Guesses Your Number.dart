import 'dart:io';

void main() {
  int low = 1;
  int high = 100;
  int attempts = 0;

  print("Think of a number between 1 and 100. I will guess it.");

  while (low <= high) {
    int guess = (low + high) ~/ 2;
    attempts++;
    stdout.write("Is your number $guess? (high/low/yes): ");
    String response = stdin.readLineSync().toLowerCase();

    if (response == "yes") {
      print("I guessed it in $attempts attempts!");
      break;
    } else if (response == "high") {
      high = guess - 1;
    } else if (response == "low") {
      low = guess + 1;
    } else {
      print("Please reply with high, low, or yes only.");
    }
  }
}
