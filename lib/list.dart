class Animal{
  String img;
  bool accept;
  Animal(this.img,this.accept);
}
List<Animal> l= [
    Animal('images/dino.png', false),
    Animal('images/dino.png', false),
    Animal('images/wolf.png', false),
    Animal('images/wolf.png', false),
    Animal('images/peacock.png', false),
    Animal('images/peacock.png',false),
   Animal( 'images/whale.png',false),
    Animal('images/whale.png', false),
    Animal('images/octo.png',false),
    Animal('images/octo.png',false),
    Animal('images/fish.png',false),
    Animal('images/fish.png',false),
   /* 'images/frog.png',
    'images/frog.png',
    'images/seahorse.png',
    'images/seahorse.png',
    'images/girraf.png',
    'images/girraf.png',*/
  ];
  List shuffle()
  {     
         l.shuffle();
         return l;
  }