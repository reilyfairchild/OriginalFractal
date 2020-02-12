public void setup(){
size(500, 500);
rectMode(CENTER);
}
public void draw(){
background(255, 0, 0);

reily(250, 250, 250);
max(200, 200, 40);
}
public void mouseDragged()
{
  stroke((float)(Math.random()*255), (float)(Math.random()*(255)), (float)(Math.random()*255));
  reily(mouseX, mouseY, (int)(Math.random()*200));

}
public void reily(int x, int y, int len){
if(len%2 == 0){
fill((float)(Math.random()*255-len), (float)(Math.random()*(200-len)), 0);
}else{
fill(0, (float)(Math.random()*100-len), (float)(Math.random()*255+len));
}
rect(x, y, len, len);
if(len > 40){
reily(x + len/2, y, len/2);
reily(x - len/2, y, len/2);
reily(x, y + len/2, len/2);
reily(x, y -len/2, len/2);
}

}