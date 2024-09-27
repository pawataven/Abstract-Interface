
abstract class Game {
  int? level;

  void start();
  void pause();
  void toContinue();
  void stop();
  void play();
}

abstract class Player {
  String? name;
  int selectGame();
  bool isPlayer();
}

abstract class TicTacToeAst implements Game, Player {
  start() => print('Game is Start()');
  pause() => print('Game is play()');
  play() => print('game is play()');
}

class TicTacToe extends TicTacToeAst {
  @override
  int? level;
  String? name;

  TicTacToe(this.level, this.name);

  int selectGame() => 2;
  bool isPlayer() => true;

  toContinue() => print('game is continue');
  stop() => print('game is stop()');
}

void main(List<String> args) {
  var TacToe = TicTacToe(5000, 'dddddd');

  TacToe.start();
  TacToe.play();
  TacToe.pause();
  TacToe.stop();

  print('Your level : ${TacToe.level} กาก');
  print('Yourname is ${TacToe.name}');
  TacToe.toContinue();
}
