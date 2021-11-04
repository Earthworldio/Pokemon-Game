import 'dart:io';
import 'Player.dart';
import 'Pokemon.dart';

class Shop{
  
  int Potion = 0;
  int Evolution = 0;
  String name ='';
 
  Shop(String name){
    this.name = name;
  }
  var dk = (r'''
                   ."-,.__
                 `.     `.  ,
              .--'  .._,'"-' `.
             .    .'         `'
             `.   /          ,'
               `  '--.   ,-"'
                `"`   |  \
                   -. \, |
                    `--Y.'      ___.
                         \     L._, \
               _.,        `.   <  <\                _
             ,' '           `, `.   | \            ( `
          ../, `.            `  |    .\`.           \ \_
         ,' ,..  .           _.,'    ||\l            )  '".
        , ,'   \           ,'.-.`-._,'  |           .  _._`.
      ,' /      \ \        `' ' `--/   | \          / /   ..\
    .'  /        \ .         |\__ - _ ,'` `        / /     `.`.
    |  '          ..         `-...-"  |  `-'      / /        . `.
    | /           |L__           |    |          / /          `. `.
   , /            .   .          |    |         / /             ` `
  / /          ,. ,`._ `-_       |    |  _   ,-' /               ` \
 / .           \"`_/. `-_ \_,.  ,'    +-' `-'  _,        ..,-.    \`.
.  '         .-f    ,'   `    '.       \__.---'     _   .'   '     \ \
' /          `.'    l     .' /          \..      ,_|/   `.  ,'`     L`
|'      _.-""` `.    \ _,'  `            \ `.___`.'"`-.  , |   |    | \
||    ,'      `. `.   '       _,...._        `  |    `/ '  |   '     .|
||  ,'          `. ;.,.---' ,'       `.   `.. `-'  .-' /_ .'    ;_   ||
|| '              V      / /           `   | `   ,'   ,' '.    !  `. ||
||/            _,-------7 '              . |  `-'    l         /    `||
. |          ,' .-   ,' ||               | .-.        `.      .'     ||
 `'        ,'    `".'    |               |    `.        '. -.'       `'
          /      ,'      |               |,'    \-.._,.'/'
          .     /        .               .       \    .''
        .`.    |         `.             /         :_,'.'
          \ `...\   _     ,'-.        .'         /_.-'
           `-.__ `,  `'   .  _.>----''.  _  __  /
                .'        /"'          |  "'   '_
               /_|.-'\ ,".             '.'`__'-( \
                 / ,"'"\,'               `/  `-.|" 
  ''');
  var dk2 = (r'''
                 ."-,.__
               `.     `.  ,
             .--'  .._,'"-' `.
            .    .'         `'
            `.   /          ,'
             `  '--.   ,-"'
               `"`   |  \
                 -. \, |
                  `--Y.'        ___.
                       \       L._, \
               _.,       `.    <  <\                _
             ,' '          `,  `.   | \            ( `
          ../, `.           `   |    .\`.           \ \_
         ,' ,..  .           _.,'    ||\l            )  '".
        , ,'   \           ,'.-.`-._,'  |           .  _._`.
      ,' /      \ \        `' ' `--/   | \          / /   ..\
    .'  /        \ .         |\__ - _ ,'` `        / /     `.`.
    |  '          ..         `-...-"  |  `-'      / /        . `.
    | /           |L__           |    |          / /          `. `.
   , /            .   .          |    |         / /             ` `
  / /          ,. ,`._ `-_       |    |  _   ,-' /               ` \
 / .           \"`_/. `-_ \_,.  ,'    +-' `-'  _,        ..,-.    \`.
.  '         .-f    ,'   `    '.       \__.---'     _   .'   '     \ \
' /          `.'    l     .' /          \..      ,_|/   `.  ,'`     L`
|'      _.-""` `.    \ _,'  `            \ `.___`.'"`-.  , |   |    | \
||    ,'      `. `.   '       _,...._        `  |    `/ '  |   '     .|
||  ,'          `. ;.,.---' ,'       `.   `.. `-'  .-' /_ .'    ;_   ||
|| '              V      / /           `   | `   ,'   ,' '.    !  `. ||
||/            _,-------7 '              . |  `-'    l         /    `||
. |          ,' .-   ,' ||               | .-.        `.      .'     ||
 `'        ,'    `".'    |               |    `.        '. -.'       `'
          /      ,'      |               |,'    \-.._,.'/'
          .     /        .               .       \    .''
        .`.    |         `.             /         :_,'.'
          \ `...\   _     ,'-.        .'         /_.-'
           `-.__ `,  `'   .  _.>----''.  _  __  /
                .'        /"'          |  "'   '_
               /_|.-'\ ,".             '.'`__'-( \
                 / ,"'"\,'               `/  `-.|"
  ''');
 
   void potion( Player player){
      if(player.gold >= 100 && player.Item[0] != 'Potion'){
         print(' Buy Potion succesfully !');
         player.Item.clear();
         player.Item.add('Potion');
         player.gold-=100;
      }else{
        print(r''' Can't buy !!! ''');
      }
  }

  void evolution( Player player , Pokemon pokemon){  
      if(player.gold >= 300 && player.lvl>1 && pokemon.name.length < 15){
         pokemon.name = pokemon.name+' x Evolution ';
         pokemon.hp+=50;
         print('Already Evolution!');
         dargon();
         pokemon.skill.clear();
         if(pokemon.lvl==2){
           pokemon.skill.add('FLAME GUARD (50 ATK) ');
           pokemon.skill.add('FIRE REMNANT (+50 HP)');
         }else if(pokemon.lvl==3){
           pokemon.skill.add('FLAME GUARD (100 ATK) ');
           pokemon.skill.add('FIRE REMNANT (+100 HP)');
         }
         player.playerPokemon.clear();
         player.playerPokemon.add('\x1B[34m$dk\x1B[0m');
         player.gold-=300;
      }else{
        print(''' Can't evolution !!!  Need lvl2 & 300 gold''');
      }
  }
   void delay(timsAsSeconds) {
    sleep(Duration(milliseconds: timsAsSeconds));
  }

  void refresh() {
    print("\x1B[2J\x1B[0;0H");
  }
  
  void dargon() {
    int i = 0;
    int x = 100;
    while (i < 20) {
      print1();
      delay(x);
      refresh();
      print2();
      delay(x);
      refresh();
      i++;
    }
  }
  
  
  void print1() {
    print('\x1B[31m$dk\x1B[0m' );
  }
  void print2() {
    print('\x1B[34m$dk2\x1B[0m');
  }

}
