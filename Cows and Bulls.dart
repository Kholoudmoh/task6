import 'dart:io';
import 'dart:math';

void main() {
  final random = Random();
  String target = (100 + random.nextInt(900)).toString();

  print("I picked a 3-digit number. Try guessing!");

  while (true) {
    stdout.write("Your guess: ");
    String guess = stdin.readLineSync();

    if (guess.length != 3) {
      print("Please enter exactly 3 digits.");
      continue;
    }

    int cows = 0, bulls = 0;
    for (int i = 0; i < 3; i++) {
      if (guess[i] == target[i]) {
        cows++;
      } else if (target.contains(guess[i])) {
        bulls++;
      }
    }

    if (cows == 3) {
      print("You got it! The number was $target.");
      break;
    } else {
      print("Cows: $cows, Bulls: $bulls");
    }
  }
}
