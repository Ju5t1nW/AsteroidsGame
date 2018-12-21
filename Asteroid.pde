class Asteroid extends Floater{
	private int rSpeed;
	public Asteroid(){
		rSpeed = (int)(Math.random()*21)-10;
		myCenterX = (int)(Math.random()*1000);
		myCenterY = (int)(Math.random()*1000);
		myDirectionX = (int)(Math.random()*10);
		myDirectionY = (int)(Math.random()*10);
		myPointDirection = 0;
		corners = 4;
        xCorners = new int[corners];
        yCorners = new int[corners];
        xCorners[0] = 17;
        yCorners[0] = -10;
        xCorners[1] = 6;
        yCorners[1] = 13;
        xCorners[2] = -16;
        yCorners[2] = 6;
        xCorners[3] = 2;
        yCorners[3] = -10;
        myColor = 170;
	}
	public void move(){
		super.turn(rSpeed);
		super.move();
	}
    public void setX(int x){
        myCenterX = x;
    }
    public int getX(){
        return (int)myCenterX;
    }
    public void setY(int y){
        myCenterY = y;
    }
    public int getY(){
        return (int)myCenterY;
    }
    public void setDirectionX(double x){
        myDirectionX = x;
    }
    public double getDirectionX(){
        return myDirectionX;
    }
    public void setDirectionY(double y){
        myDirectionY = y;
    }
    public double getDirectionY(){
        return myDirectionY;
    }
    public void setPointDirection(int degrees){
        myPointDirection = degrees;
    }
    public double getPointDirection(){
        return myPointDirection;
    }
}