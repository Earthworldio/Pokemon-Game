import 'dart:io';
import 'Game.dart';

main(List<String> args) {
  Game game = Game();
  game .printGameName();  
  String input = stdin.readLineSync()!;
  bool isFinish = false;
   while (isFinish != true ) {
    if (input == 'A') {
      game.Rungame();    
      isFinish = true;  
    } else {
      print("Mismatch input");
      isFinish = true;
    }
   }
}
