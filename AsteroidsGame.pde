Spaceship oof;
Star [] blink = new Star[500];
public void setup() 
{
size(1000, 1000);


for(int i = 0; i < 500; i ++){
		blink[i] = new Star();
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