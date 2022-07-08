class Pokemon {
  String name;
  int level, hp, dmg;
  Pokemon(this.name, this.level, this.hp, this.dmg);
  void attack(Pokemon o, Pokemon p) {
    print("${o.name} attack!");
    print("${p.name} HP ==> ");
    print(p.hp -= o.dmg);
  }

  int getHP() {
    return this.hp;
  }
}

void main() {
  Pokemon p1 = new Pokemon("pika", 10, 100, 25);
  Pokemon p2 = new Pokemon("evie", 10, 150, 5);
  while (p1.getHP() >= 0 || p2.getHP() >= 0) {
    if (p1.getHP() == 0 || p2.getHP() == 0) {
      if (p1.getHP() == 0) {
        print("${p2.name} is the winner!");
      } else if (p2.getHP() == 0) {
        print("${p1.name} is the winner!");
      }
      break;
    }
    p1.attack(p1, p2);
    p2.attack(p2, p1);
    print("==================================");
  }
}