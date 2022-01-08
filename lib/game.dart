//ignore_for_file: avoid_print
import 'dart:io';
import 'dart:math';
final list = <int>[];
class Game {
  int? max;
  int? answer;
  int count=0;
  //bool check=true;
  Game({int? maxRandom})
  {
    if (maxRandom==null)
    {
      maxRandom = 100;
    }
    max = maxRandom;
    var r = Random();
    answer=r.nextInt(max!)+1;
  }
  int? get maxx
  {
    return max;
  }
  int get numcount
  {
    return count;
  }
  int doGuess(int x) {
    if (x > answer!) {
      count++;
      return 1;
    }
    else if (x < answer!) {
      count++;
      return -1;
    }
    else {
      count++;
      return 0;
    }
  }

}
