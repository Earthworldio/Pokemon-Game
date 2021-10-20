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
  
  void printSkill(){
    print('[1] ${skill[0]}');
    print('[2] ${skill[1]}');
  }

  void addPoke(String x){       /// Try to maike it like oop
      picturePoke = x;
  }
  
  void showPoke(){              /// Try to maike it like oop
    print(picturePoke);
  }

  
  void useSkillLvl1(int input , Pokemon enemies , Pokemon us){
      while(true){
      if(us.lvl==1){
        if(input==1){      
        enemies.hp-=25;   
          break;  
        }else if(input==2){     
          us.hp+=25;
          break; 
        }
      }else if(us.lvl==2){
        if(input==1){      
        enemies.hp-=40;   
          break;  
        }else if(input==2){     
          us.hp+=40;
          break; 
        }  
      }else if (us.lvl==3){
        if(input==1){      
          enemies.hp-=65;   
          break;  
        }else if(input==2){     
          us.hp+=65;
          break; 
        }  
      }
      
    }
  }
}

