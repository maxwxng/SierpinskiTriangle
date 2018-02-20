
public void setup()
{
	size(600, 600);
}
public void draw()
{
	sierpinski(0,600,600);
}
public void mouseDragged()//optional
{
	
}
public void sierpinski(int x, int y, int len) 
{
	fill((int)(Math.random()*365)+1,(int)(Math.random()*365)+1,(int)(Math.random()*365)+1);
	if(len<mouseX+10){

		triangle(x,y,x+len,y,x+len/2,y-len);
		triangle(x+len*3/8,y-len/4,x+len/2,y-len/2,x+len*5/8,y-len/4);
	}
	else{
		sierpinski(x,y,len/2);
		sierpinski(x+len/2,y,len/2);
		sierpinski(x+len/4,y-len/2,len/2);
		//sierpinski(x+len*3/8,y-len/4,len/2);
	}
}