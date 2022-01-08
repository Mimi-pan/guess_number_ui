//ignore_for_file: avoid_print
import 'dart:io';
import 'dart:math';
import 'game.dart';

void main() {
  var isCorrect1= false;
  playGame();
  do {
    stdout.write('Play again?(Y/N): ');
    var input1 = stdin.readLineSync();
    if (input1 != null) {
      if (input1 == 'y' || input1 == 'Y') {
        playGame();
        continue;
      }
      else if (input1 == 'n' || input1 == 'N') {
        print("You have played "+ list.length.toString() + "rounds");
        for (var i = 0; i < list.length; i++) {
          print("Game#${i+1} : "  +list[i].toString()+" guesses");
        }
        break;
      }
      else {
        continue;
      }
    }
  } while (!isCorrect1);

}
void playGame()
{
  stdout.write('Enter a maximum number to random : ');
  var input0 = stdin.readLineSync();
  var test = int.tryParse(input0!);
  var game = Game(maxRandom:test);
  var isCorrect = false;
  print('╔════════════════════════════════════════');
  print('║            GUESS THE NUMBER            ');
  print('╟────────────────────────────────────────');

  do {
    stdout.write('║ Guess the number between 1 and ${game.maxx}: ');
    var input = stdin.readLineSync();
    var guess = int.tryParse(input!);
    if (guess == null) {
      continue;
    }
    var result = game.doGuess(guess);
    var count = game.numcount;

    if (result == 1) {
      print('║ ➜ $guess is TOO HIGH! ▲');
      print('╟────────────────────────────────────────');
    } else if (result == -1) {
      print('║ ➜ $guess is TOO LOW! ▼');
      print('╟────────────────────────────────────────');
    } else if (result == 0){
      print('║ ➜ $guess is CORRECT ❤, total guesses: $count');
      list.add(count);
      print('╟────────────────────────────────────────');
      break;
    }
  } while (true);
  print('║                 THE END                ');
  print('╚════════════════════════════════════════');
}