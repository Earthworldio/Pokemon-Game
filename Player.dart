class Player {
  String name = '';
  int gold = 0;
  int lvl = 0;
  int exp = 0;
  List<String> playerPokemon = [];
  List<String> Item = [];
  
  Player(String name) {
    this.name = name;
    gold = 100;
    lvl = 1;
    exp=0;
  }
  
  void Showpoke(){
    print(playerPokemon);
  }
  

}
