//Global Variables
float buttonX1, buttonY1, buttonWidth1, buttonHeight1;
float buttonX2, buttonY2, buttonWidth2, buttonHeight2;
float rectDisplayX, rectDisplayY, rectDisplayWidth, rectDisplayHeight;
float ellipseX, ellipseY, ellipseXDiameter, ellipseYDiameter;
float x, y, xDiameter, yDiameter;
color black=#000000, white=#FFFFE1; //Night Mode, blue is 00 on the black, but not the white
Boolean rectON=false, ellipseON=false;
//
PFont buttonFont;
color purple=#FF00FF; //Not Night Mode friendly, both have 255 of blue
String buttonText1="Click Me", buttonText2="Or Me";
//
void setup()
{
  size( 600, 400 ); //fullScreen(); //displayWidth, displayHeight
  display();
  population();
  textSetUp();
}//End setup
//
void draw()
{
  GUI_draw();
  textDraw();
}//End draw
//
void keyPressed() {
}//End keyPressed
//
void mousePressed()
{
  buttonMousePressed();
}//End mousePressed
//
//End MAIN
