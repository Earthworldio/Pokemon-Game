import 'Game.dart';
import 'Player.dart';

class Pokemon {
  String name = '';
  int hp = 0;
  int maxhp=0;
  int lvl = 0;
  int exp = 0;
  List<String> skill = [];
  String picturePoke ='';
  Game? gm = null;
  bool error = false;
  
  Pokemon (String name) {
    this.name = name;
    hp = 100;
    maxhp=100;
    lvl = 1;
  }
 
  String showHp(){
    var bar = hp*100/maxhp; 
     var std = '';
    for(int i =1 ; i<=bar/10;i++){
      std+='█';
    }
    return '\x1B[32m$std\x1B[0m'+" ( ${hp.toString()} )";
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
          enemies.hp-=20;   
          break;  
        }else if(input==2){     
          us.hp+=20;
          break; 
        }else if(input==3){    
         if(player.Item[0] == 'Potion'){
          us.hp+=100;
          player.Item.clear();
          player.Item.add('null');
          break; 
         }else if(player.Item != 'Potion'){
           print('No item');
            error=true;
            break; 
         }
        }
      }else if(us.lvl==2){
        if(input==1){      
          enemies.hp-=40;   
          break;  
        }else if(input==2){     
          us.hp+=40;
          break; 
        }else if(input==3){     
         if(player.Item[0] == 'Potion'){
           us.hp+=100;
           player.Item.clear();
           player.Item.add('null');
            break; 
         }else if(player.Item != 'Potion'){
           print('No item');
           error=true;
            break; 
         }
        }  
      }else if (us.lvl==3){
        if(input==1){      
          enemies.hp-=70;   
          break;  
        }else if(input==2){     
          us.hp+=70;
          break; 
        }else if(input==3){     
         if(player.Item[0] == 'Potion'){
           us.hp+=100;
           player.Item.clear();
           player.Item.add('null');
            break; 
         }else if(player.Item != 'Potion'){
           print('No item');
           error=true;
           break; 
         }
        }  
      }
      
    }
    
  }
}

