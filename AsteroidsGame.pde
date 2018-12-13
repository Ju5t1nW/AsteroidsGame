Spaceship oof;
Star [] blink = new Star[500];
ArrayList <Asteroid> yeet = new ArrayList <Asteroid>();
public void setup() 
{
size(1000, 1000);


for(int i = 0; i < 500; i ++){
		blink[i] = new Star();
}
for(int i = 0; i < 25; i++){
		yeet.add(new Asteroid());
	}
 oof = new Spaceship();
}
public void draw() {

background(0);
oof.show();
oof.move();

for(int i = 0; i < 200; i ++){
		blink[i].show();
}
for(int i = 0; i < yeet.size(); i++){
		yeet.get(i).show();
		yeet.get(i).move();
		
		}
}
public void keyPressed(){
	if(key == 'f'){
		oof.setX((int)(Math.random()*1000)+1);
		oof.setY((int)(Math.random()*1000)+1);
		oof.setDirectionX((double)(0.0));
		oof.setDirectionY((double)(0.0));
		oof.setPointDirection((int)(Math.random()*360)+1);
		
	}
	if(key == 'w'){
		oof.accelerate(0.8);
	}
	if(key == 'a'){
		oof.turn(-8);
	}
	if(key == 's'){
		oof.accelerate(-0.8);
	}
	if(key == 'd'){oof.turn(8);}
}

