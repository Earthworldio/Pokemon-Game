import 'dart:io';
import 'dart:math';
import 'Player.dart';
import 'Pokemon.dart';
import 'Shop.dart';


class Game {
  Player? player = null;
  Pokemon? pokemonEasy = null;
  Pokemon? pokemonMedium = null;
  Pokemon? pokemonHard = null;
  Pokemon? pk = null;
  Shop? sh = null;

  
  var nameGame = (r''' 
                                  ,'\
    _.----.        ____         ,'  _\   ___    ___     ____
_,-'       `.     |    |  /`.   \,-'    |   \  /   |   |    \  |`.
\      __    \    '-.  | /   `.  ___    |    \/    |   '-.   \ |  |
 \.    \ \   |  __  |  |/    ,','_  `.  |          | __  |    \|  |
   \    \/   /,' _`.|      ,' / / / /   |          ,' _`.|     |  |
    \     ,-'/  /   \    ,'   | \/ / ,`.|         /  /   \  |     |
     \    \ |   \_/  |   `-.  \    `'  /|  |    ||   \_/  | |\    |
      \    \ \      /       `-.`.___,-' |  |\  /| \      /  | |   |
       \    \ `.__,'|  |`-._    `|      |__| \/ |  `.__,'|  | |   |
        \_.-'       |__|    `-._ |              '-.|     '-.| |   |
                                `'                            '-._|     
  ''');

  var gym = (r''' 
       )\                 O_._._._A_._._._O                /(
                \`--.___,'=================`.___,--'/
                 \`--._.__                 __._,--'/
                   \  ,. l`~~~~~~~~~~~~~~~'l ,.  /
       __            \||(_)!_!_!_.-._!_!_!(_)||/            __
       \\`-.__        ||_|____!!_|;|_!!____|_||        __,-'//
        \\    `==---='-----------'='-----------`=---=='    //
        | `--.                                         ,--' |
         \  ,.`~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~',.  /
           \||  ____,-------._,-------._,-------.____  ||/
            ||\|___!`======="!`======="!`======="!___|/||
            || |---||--------||-| | |-!!--------||---| ||
  __O_____O_ll_lO_____O_____O|| |'|'| ||O_____O_____Ol_ll_O_____O__
  o H o o H o o H o o H o o |-----------| o o H o o H o o H o o H o
 ___H_____H_____H_____H____O =========== O____H_____H_____H_____H___
                          /|=============|\
()______()______()______() '==== +-+ ====' ()______()______()______()
||{_}{_}||{_}{_}||{_}{_}/| ===== |_| ===== |\{_}{_}||{_}{_}||{_}{_}||
||      ||      ||     / |==== s(   )s ====| \     ||      ||      ||
======================()  =================  ()======================
----------------------/| ------------------- |\----------------------
                     / |---------------------| \
-'--'--'           ()  '---------------------'  ()
                   /| ------------------------- |\    --'--'--'
       --'--'     / |---------------------------| \    '--'
                ()  |___________________________|  ()           '--'-
  --'-          /| _______________________________  |\
 --'           / |__________________________________| \
   
  ''');

  List<String> pokemonNewbie = [
    r''' 
    __                                _.--'"7
    `. `--._                        ,-'_,-  ,'
     ,'  `-.`-.                   /' .'    ,|
     `.     `. `-     __...___   /  /     - j
       `.     `  `.-""        " .  /       /
         \     /                ` /       /
          \   /                         ,'
          '._'_               ,-'       |
             | \            ,|  |   ...-'
             || `         ,|_|  |   | `             _..__
            /|| |          | |  |   |  \  _,_    .-"     `-.
           | '.-'          |_|_,' __!  | /|  |  /           \
   ,-...___ .=                  ._..'  /`.| ,`,.      _,.._ |
  |   |,.. \     '  `'        ____,  ,' `--','  |    /      |
 ,`-..'  _)  .`-..___,---'_...._/  .'      '-...'   |      /
'.__' ""'      `.,------'"'      ,/            ,     `.._.' `.
  `.             | `--........,-'.            .         \     \
    `-.          .   '.,--""     |           ,'\        |      .
       `.       /     |          L          ,\  .       |  .,---.
         `._   '      |           \        /  .  L      | /   __ `.
            `-.       |            `._   ,    l   .    j |   '  `. .
              |       |               `"' |  .    |   /  '      .' |
              |       |                   j  |    |  /  , `.__,'   |
              `.      L                 _.   `    j ,'-'           |
               |`"---..\._______,...,--' |   |   /|'      /        j
               '       |                 |   .  / |      '        /
                .      .              ____L   \'  j    -',       /
               / `.     .          _,"     \   | /  ,-','      ,'
              /    `.  ,'`-._     /         \  i'.,'_,'      .'
             .       `.      `-..'             |_,-'      _.'
             |         `._      |            ''/      _,-'
             |            '-..._\             `__,.--'
            ,'           ,' `-.._`.            .
           `.    __      |       "'`.          |
             `-"'  `""""'            7         `.
                                    `---'--.,'"`' mh
  
  
  ''',
    r''' 
                  _.--""`-..
            ,'          `.
          ,'          __  `.
         /|          " __   \
        , |           / |.   .
        |,'          !_.'|   |
      ,'             '   |   |
     /              |`--'|   |
    |                `---'   |
     .   ,                   |                       ,".
      ._     '           _'  |                    , ' \ `
  `.. `.`-...___,...---""    |       __,.        ,`"   L,|
  |, `- .`._        _,-,.'   .  __.-'-. /        .   ,    \
-:..     `. `-..--_.,.<       `"      / `.        `-/ |   .
  `,         """"'     `.              ,'         |   |  ',,
    `.      '            '            /          '    |'. |/
      `.   |              \       _,-'           |       ''
        `._'               \   '"\                .      |
           |                '     \                `._  ,'
           |                 '     \                 .'|
           |                 .      \                | |
           |                 |       L              ,' |
           `                 |       |             /   '
            \                |       |           ,'   /
          ,' \               |  _.._ ,-..___,..-'    ,'
         /     .             .      `!             ,j'
        /       `.          /        .           .'/
       .          `.       /         |        _.'.'
        `.          7`'---'          |------"'_.'
       _,.`,_     _'                ,''-----"'
   _,-_    '       `.     .'      ,\
   -" /`.         _,'     | _  _  _.|
    ""--'---"""""'        `' '! |! /
                            `" " -' mh
               
  ''',
    r'''
         _,........__
            ,-'            "`-.
          ,'                   `-.
        ,'                        \
      ,'                           .
      .'\               ,"".       `
     ._.'|             / |  `       \
     |   |            `-.'  ||       `.
     |   |            '-._,'||       | \
     .`.,'             `..,'.'       , |`-.
     l                       .'`.  _/  |   `.
     `-.._'-   ,          _ _'   -" \  .     `
`."""""'-.`-...,---------','         `. `....__.
.'        `"-..___      __,'\          \  \     \
\_ .          |   `""""'    `.           . \     \
  `.          |              `.          |  .     L
    `.        |`--...________.'.        j   |     |
      `._    .'      |          `.     .|   ,     |
         `--,\       .            `7""' |  ,      |
            ` `      `            /     |  |      |    _,-'"""`-.
             \ `.     .          /      |  '      |  ,'          `.
              \  v.__  .        '       .   \    /| /              \
               \/    `""\"""""""`.       \   \  /.''                |
                `        .        `._ ___,j.  `/ .-       ,---.     |
                ,`-.      \         ."     `.  |/        j     `    |
               /    `.     \       /         \ /         |     /    j
              |       `-.   7-.._ .          |"          '         /
              |          `./_    `|          |            .     _,'
              `.           / `----|          |-............`---'
                \          \      |          |
               ,'           )     `.         |
                7____,,..--'      /          |
                                  `---.__,--.'mh
  
    '''
  ];

 List<String> pokemoninGym = [r'''
                 _.--"'"""--._
              ."             `.
             /                 .
            j                   .
            |                   |
            |                   |
            | (')              j
            `                 ,`.
             \               ,^. `.
              .             /   \  .
              |            /     . |
              |          ,'      | |
             ,'---..___ /        | |
            ' `--..___ "`.      .  |
             `"--....___.'     /  j__.....__
                              /   |         `.
                             / _,------._     `.
                            /,+_         `.     `.
                          ,'    `-.        \      .
                         .         `.       \      \
                         |           `.     |       \
                         |             `.   |_,..__  .
                         |\              \  |      `.|
                         | `.,--------._  \ |        `
                         |  |           `. \|
                         |  |             `.|
                         |  |
                         |  |
                         |. '
                        .' \ `.
                     _,' ,' `. ._
   ---====+,______,."_.-'     .  `.
   _,..==`'_.+'-""""'         / ^.\`:._
 ,="/    ,"            ....==+ /  `\  `:.
'  /    / |               _+:-'    .|   ``.
       '  `.           --""        |'     `\
                                   ' mh
 ''',r'''
         ,-.                                            ___.._
 _     `. `.                                    _,-"""      ',._
`.`.      `.\                                _,'         _..-'  `.
  `._\       `.                            ,'         _,'_,.-'-.  \
      `.       `.                        ,'        ,-',-"       \  .
        `.       \                      /  _,----"',-'           L  L
          `.      \                   ,' _.--"-.  [              |  |
            `.     .                 / ,'       | |     _..---../   |
              .     L               / /         | j ,.-'        `   |
               \    .              ' /          j ,'             |  |
                \    .            ' /          ' /               |  |
                 \   l           / /          /,'                j  '
                  L__L._        / /          +'      __,........'  j
                ,'   '  "`.    / /         .' _,.--'"           \  |
               /,""-.      `. ' '        _/.-'                  | F
              /|   / l       . /       ,'                       | |
             | |  /  |       ]'      ,'                         | |
            ,._\"'   |       |     ,'-'"""""""""""""'----.._    / |
            |  \`.._,'       F  _,'                         `--'  |
            `..'           _/ ,:_____                         L   |
              `..          .-'       `'--.._                   | j
            _,. /,---.       \              `--..              | |
           F  <j-.'   `       ._                 `"-._        j  '
           |  <|`,.    |       `L._                   `..   _, ,'
           `..<|`.___,'        |.  `-.                   Y"' _.
              `L               | `.   `-.._____________,',.-'
                `.            .Y   \      `"".""""".  ."'
                  `.        ,' |\   `.        `+-._ \  |
                    `,--. -'   | .    `.       `   `.| |
                    /    //    |  \    ``-..___/     | |
                   j    .l     |   .    F   \   `   F  |
                   |    ||     |    `   `    .   ` ,  /
                   |    ||    F      `-.|     . _,' _'
                   |   / |    |       `._`-----'  ,'
                   |  /  |   /           `-------'
                   l /   \_,'
                    " mh
  ''',r''' 
                         ,--""+--.
                    /     j   /`.
                   |     /   |   `.
                   |   ,'    '     \
                   j,-'     '`..    \
                  +      _ /    `._/ \
                  |     / '-.     |   .
                  |    /     |   /    |
                  |   /     j   j     |
                  |  j      |   |     |._
                  | .'     7    |     |  `.
  ___      _.._   | j      |    +     '    `.
 |.---=-.,'+-. `. |/       F     L  ,'    ,'`.
 ||,==--'|_' |  j  \      /      |,'   ,`'    L
 'Y'   | |  '/ ',.-.\    j     ,,^  _,' \     |
`.||   |  `.'  '    `.   / _,-'   `'     L   F
  ||   `     .  ,-.   `,--'              |   |
  `'    `.  /_,' ,'     `--------------""""'Y
         _:"'_.-'       /_>:-.__           /
      `-".`"'__,`-.,-._/      `.""`------"'
      `.| `"'      | | _.--'""'--\
       || /        | '"  ___,.._  \
      _|||__      / /,.-'       `- .
    ,'   `. .    /,'/'  _.,-"""--._F
    7     | |  .',L'|_-'           |
    +     | | / / ',"'  ,.-'""'`-._|
     L    ' |. /  .-.`"'           |
     |   j j   \  `-.'\           j
     +   | | \  `.   ` `.  _.... ,
      L  | |  \   .   `  \"     /
      | ,' |   L  ,'    \ `    .
      | || |   '  |      L `   |
      `./|j     `. .     `. \ j
       |  '       ` .     | '\`
                   \ '.   | \
                    | |  /,-'
                    j l  "
                  _/_,'
                 ',' mh

  '''];


  

  void delay(timsAsSeconds) {
    sleep(Duration(milliseconds: timsAsSeconds));
  }

  void refresh() {
    print("\x1B[2J\x1B[0;0H");
  }

  void Rungame() {
    stdout.write("Enter your name : ");
    String name = stdin.readLineSync()!;
    player = Player(name);
    player!.Item.add(' Don\'t have Item ');
    print("Hello $name , Welconme to Pokemon World !");
    stdout.write("Pick you partner [1] Wartortle  [2] Charmander [3] Squirtle : ");
    int num = int.parse(stdin.readLineSync()!);
    refresh();
    if (num == 1) {     
      print(pokemonNewbie[0]);
      print('[Wartortle]');
      pk = Pokemon('[Wartortle]');
      pk!.addPoke(pokemonNewbie[0]);
      player!.playerPokemon.add(pokemonNewbie[0]);
      pk!.skill.add('ARCANE AURA (30 ATK)');
      pk!.skill.add('FREEZING FIELD (+30 HP)');
    } else if (num == 2) {
      print(pokemonNewbie[1]);
      print('[Charmander]');
      pk = Pokemon('[Charmander]');
      pk!.addPoke(pokemonNewbie[1]);
      player!.playerPokemon.add(pokemonNewbie[1]);
      pk!.skill.add('FLAME GUARD (30 ATK) ');
      pk!.skill.add('FIRE REMNANT (+30 HP)');
    } else if (num == 3) {
      print(pokemonNewbie[2]);   
      print('[Squirtle]');
      pk = Pokemon('[Squirtle]');
      pk!.addPoke(pokemonNewbie[2]);
      player!.playerPokemon.add(pokemonNewbie[2]);
      pk!.skill.add('COLD EMBRACE (30 ATK) ');
      pk!.skill.add('WINTER CURSE (+30 HP)');
    }
    mainMenu();

  }

  void mainMenu(){
      delay(2500);
      refresh();
      print('       Mainmenu       ');
      stdout.write('[1] Go gym   [2] Shop  [3] Profile : ');
      int input = int.parse(stdin.readLineSync()!);
      if(input==1){
        Gym();
        mainMenu();
      }else if(input==2){     
        buyshop();
        mainMenu();
      }else if(input==3){
        print('');
        Profile();
        mainMenu();
      }
  }
  void buyshop(){
    stdout.write('[1] Potion  [2] Evolution  : ');
    int input = int.parse(stdin.readLineSync()!);
    sh = Shop('name');
    if(input==1){
       sh!.potion(player!);
    }else if(input==2){
       sh!.evolution(player!, pk!);
    }
  }

  void Profile(){
    print('Player : Name : ${player!.name}  Lvl : ${player!.lvl}  Gold : ${player!.gold}  Exp : ${player!.exp}  Item : ${player!.Item[0]}'  );
    print('Pokemon : Name : ${pk!.name}  Lvl: ${pk!.lvl}  Hp : ${pk!.hp}  Exp : ${pk!.exp}');
  }
 
  void Gym() {                  // All Activities in Gym
    refresh();
    print(gym);
    delay(3500);
    refresh();
    while(true){
      print('Who you want to fight');
      print('[1] Wanamo (Easy)');
      print('[2] Bataku (Medium)');
      print('[3] Mewto (Hard)');
      print('[0] Exit');
      stdout.write('fight with : ');
      int input = int.parse(stdin.readLineSync()!);
      if(input==1){
          print(pokemoninGym[0]);
          delay(3500);
          refresh();
          Pokemon pokemonEasy = Pokemon('Wanamo');
          pokemonEasy.addPoke(pokemoninGym[0]);
          delay(500);
          print("Welcome to fight");
          print(''); 
          fightinGym(pokemonEasy,pk!,player!);           
      }else if(input==2){
          print(pokemoninGym[1]); 
          delay(3500);
          refresh();
          Pokemon pokemonMedium = Pokemon('Bataku ');
          pokemonMedium.lvl=2;
          pokemonMedium.hp=200;
          delay(500);
          print("Welcome to fight");
          print(''); 
          fightinGym(pokemonMedium,pk!,player!);     
      }else if(input==3){
          print(pokemoninGym[2]);
          delay(3500);
          refresh();
          Pokemon pokemonHard = Pokemon('Mewto');
          pokemonHard.addPoke(pokemoninGym[2]);
          pokemonHard.lvl=3;
          pokemonHard.hp=300;
          delay(500);
          print("Welcome to fight");
          print('');
          fightinGym(pokemonHard,pk!,player!);     
      }else if(input==0){
        break;
      }
    }
    

  }
  void getExp(Pokemon pokemon , Player player , Pokemon bot ){   
    if(player.lvl!=3){ 
      if(bot.lvl ==1){
        pokemon.exp+=350;                                             
        player.exp+=350;
      }else if(bot.lvl ==2){
        pokemon.exp+=550;
        player.exp+=550;
      }else if(bot.lvl ==3){
        pokemon.exp+=1050;
        player.exp+=1050;
      }    
    }
  }

  void isLevelup(Pokemon pokemon ,  Player player){
    if(pokemon.exp >=1000){
       player.lvl+=1;
       pokemon.lvl+=1;
       player.exp=0;
       pokemon.exp=0;
       if(pokemon.name =='[Wartortle]' || player.lvl==2){
          pk!.skill.insert(0,'COLD EMBRACE ( 35 ATK) ');
          pk!.skill.insert(1,'CRYSTAL NOVA ( 35 HP) ');
       }else if(pokemon.name == '[Charmander]'){
          pk!.skill.insert(0,'SEARING CHAINS ( 35 ATK) ');
          pk!.skill.insert(0,'SLEIGHT OF FIST ( 35 HP ) ');
       }else if(pokemon.name == '[Squirtle]'){
          pk!.skill.insert(0,'ARCTIC BURN ( 35 ATK) ');
          pk!.skill.insert(0,'SPLINTER BLAST ( 35 HP ) ');
       };
       print(' level up');   
    }
  }

   void reset(Pokemon pk){
    if(pk.lvl==1){
      pk.hp=100;
    }else if(pk.lvl==2){
       pk.hp=200;
    }else if(pk.lvl==3){
      pk.hp=300;
    }

  }
  
  void fightinGym(Pokemon enemies , Pokemon us , Player player){  
     while (true){
        print(''' 
        __________________________________
        |                                 |
        |     Your hp : ${us.hp}               |
        |     Enemies hp : ${enemies.hp}            |  
        |_________________________________|
        ''');
        player.Showpoke();
        pk!.printSkill(player);
        stdout.write(' Enter you skill : ');
        int input = int.parse(stdin.readLineSync()!);
        pk!.useSkillLvl1(input, enemies, us, player);
        delay(750);
        refresh();
        print('[ Enemies turn ] ');
        enemies.showPoke();
        PokemonBotskill(enemies , us);
        delay(750);     
          if(enemies.hp==0&& us.hp==0){
              print('Draw');
              break;
          }else if(us.hp<=0){
             print('\x1B[30m[ You lose ] \x1B[0m');
             reset(pk!);
             delay(750);        
             break;
           }else if(enemies.hp <=0){
             print('\x1B[32m [ You win ] \x1B[0m');
             getReward(enemies,player); 
             getExp(pk!, player ,enemies);
             isLevelup(pk!, player);
             reset(pk!);             
             mainMenu();          
             delay(750);            
             break;
           }                
        refresh();
     }
  }
  void getReward(Pokemon bot , Player player){
    if(bot.lvl==1){
      print('\x1B[32m + 100 gold \x1B[0m');
      print('\x1B[32m + 1 lvl \x1B[0m');
      player.gold+=100;
    }else if(bot.lvl==2){
      print('\x1B[32m + 300 gold \x1B[0m');
      print('\x1B[32m + 3 lvl \x1B[0m');
      player.gold+=200;
    }else if(bot.lvl==3){
      print('\x1B[32m + 500 gold \x1B[0m');
      print('\x1B[32m + 5 lvl \x1B[0m');
      player.gold+=300;
    }
  }
  
  void PokemonBotskill( Pokemon bot , Pokemon player){
    int rnd = random(100);
    if(bot.lvl==1){ 
        if(rnd <65){
          player.hp-=10;
          bot.hp+=5;
        }else if (rnd>=65|| rnd <=99){
          player.hp-=20;
          bot.hp+=10;
        }    
    }else if(bot.lvl==2){
        if(rnd <65){
          player.hp-=20;
          bot.hp+=10;
        }else if (rnd>=65 || rnd <=99){
          player.hp-=40;
          bot.hp+=20;
        }    
    }else if(bot.lvl==3){
        if(rnd <65){
          player.hp-=30;
          bot.hp+=15;
        }else if (rnd>=65 || rnd <=99){
          player.hp-=80;
          bot.hp+=40;
        } 
    }
  }
  
  int random(int y) {
    Random rnd = new Random();
    int x = rnd.nextInt(y);
    return x;
  }
  
  void printGameName() {      // For print Logo game name with color like UI         
    int i = 0;               // Url : https://stackoverflow.com/questions/54018071/how-to-call-print-with-colorful-text-to-android-studio-console-in-flutter
    while (i < 5) {               
      print('\x1B[31m$nameGame\x1B[0m');
      delay(100);
      refresh();
      print('\x1B[33m$nameGame\x1B[0m');
      delay(100);
      refresh();
      print('\x1B[32m$nameGame\x1B[0m');
      delay(100);
      refresh();
      print('\x1B[34m$nameGame\x1B[0m');
      delay(100);
      refresh();
      i++;
    }
    print(nameGame);
    stdout.write("Press [A] for start a game : ");
  }
}

