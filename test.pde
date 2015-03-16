PImage img;
int cellSize = 2;
int cols, rows;

void setup(){
  size(535, 288, P3D);
  img = loadImage("Prince2.jpg");
  cols = width/cellSize;
  rows = height/cellSize;
}

void draw()
{
  background(1.0,0,0);
   img.loadPixels(); 
 
 for (int i = 0; i < cols; i ++ ) { 
 
 for (int j = 0; j < rows; j ++ ) { 
 int x = i*cellSize+ cellSize/2; 
 int y = j*cellSize+ cellSize/2; 
 int loc = x + y*width; // Pixel array location 
 color c = img.pixels[loc]; // Grab the color 
 // Calculate a z position as a function of mouseX and pixel brightness 
 float z = (mouseX/(float)width) * brightness(img.pixels[loc])- 100.0; 
 // Translate to the location, set fill and stroke, and draw the rect 
 pushMatrix(); 
 translate(x-1,y-1,z); 
 fill(c); 
 noStroke(); 
 
 ellipse(0,0,cellSize,cellSize);
 rect(0,0,cellSize,cellSize); 
 popMatrix(); 
 } 
 } 
}
