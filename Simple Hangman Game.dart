import 'dart:io';

void main() {
  const word = "APPLE";
  List<String> clue = List.filled(word.length, '_');
  int wrong = 0;
  const maxWrong = 6;
  Set<String> guessedLetters = {};

  while (wrong < maxWrong && clue.contains('_')) {
    print("Current word: ${clue.join(' ')}");
    stdout.write("Guess a letter: ");
    String letter = stdin.readLineSync().toUpperCase();

    if (guessedLetters.contains(letter)) {
      print("You already tried that letter.");
      continue;
    }

    guessedLetters.add(letter);

    if (word.contains(letter)) {
      for (int i = 0; i < word.length; i++) {
        if (word[i] == letter) clue[i] = letter;
      }
    } else {
      wrong++;
      print("Wrong guess! You have ${maxWrong - wrong} tries left.");
    }
  }

  if (!clue.contains('_')) {
    print("Congratulations! You guessed the word: $word");
  } else {
    print("You lost. The word was: $word");
  }
}
