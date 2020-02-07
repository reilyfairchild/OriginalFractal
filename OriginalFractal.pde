private int x = 250;
private int y = 250;
private int di = 300;

public void setup(){
	size(500, 500);

}
public void draw(){
	background(255);
	myFractal(x, y, di);
}
public void myFractal(int x, int y, int di){
	stroke(0);
	fill(255, 0, 0, di/2);
	ellipse(x, y, di, di);
	if(di >= 10){
		myFractal(x-di/2, y, di - di/4);
		myFractal(x+ di/2, y, di - di/4);
		myFractal(x, y + di/2, di - di/4);
		myFractal(x, y- di/2, di - di/4);
	}
}