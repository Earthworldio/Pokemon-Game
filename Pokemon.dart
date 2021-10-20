import 'Player.dart';

class Pokemon {
  String name = '';
  int hp = 0;
  int lvl = 0;
  int exp = 0;
  List<String> skill = [];
  String picturePoke ='';
  
  Pokemon (String name) {
    this.name = name;
    hp = 100;
    lvl = 1;
  }
  
  void printSkill(Player player){
    print('[1] ${skill[0]}');
    print('[2] ${skill[1]}');
    print('[3] Use item : ${player.Item}');
  }

  void addPoke(String x){       /// Try to maike it like oop
      picturePoke = x;
  }
  
  void showPoke(){              /// Try to maike it like oop
    print(picturePoke);
  }

  
  void useSkillLvl1(int input , Pokemon enemies , Pokemon us , Player player){
      while(true){
      if(us.lvl==1){
        if(input==1){      
          enemies.hp-=25;   
          break;  
        }else if(input==2){     
          us.hp+=25;
          break; 
        }else if(input==3){    
         if(player.Item[0] == 'Potion'){
          us.hp+=100;
          player.Item.clear();
          player.Item.add('null');
          break; 
         }else if(player.Item != 'Potion'){
           print('No item');
            break; 
         }
        }
      }else if(us.lvl==2){
        if(input==1){      
          enemies.hp-=50;   
          break;  
        }else if(input==2){     
          us.hp+=50;
          break; 
        }else if(input==3){     
         if(player.Item[0] == 'Potion'){
           us.hp+=100;
           player.Item.clear();
           player.Item.add('null');
            break; 
         }else if(player.Item != 'Potion'){
           print('No item');
            break; 
         }
        }  
      }else if (us.lvl==3){
        if(input==1){      
          enemies.hp-=100;   
          break;  
        }else if(input==2){     
          us.hp+=65;
          break; 
        }else if(input==3){     
         if(player.Item[0] == 'Potion'){
           us.hp+=100;
           player.Item.clear();
           player.Item.add('null');
            break; 
         }else if(player.Item != 'Potion'){
           print('No item');
            break; 
         }
        }  
      }
      
    }
  }
}

