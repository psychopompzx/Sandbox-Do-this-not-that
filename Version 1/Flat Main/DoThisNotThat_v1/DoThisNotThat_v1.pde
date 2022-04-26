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
  //Display Geometry
  size( 600, 400 ); //fullScreen(); //displayWidth, displayHeight
  println( width, height, displayWidth, displayHeight );
  //Swap display key variables for testing
  int appWidth = width; //displayWidth
  int appHeight = height; //displayHeight
  //With Strings, easier to print to the console or CANVAS
  //Display Orientation: Landscape, not portrait nor square
  String ls="Landscape or Square", p="portrait", DO="Display Orientation:", instruct="Bru, turn your phun";
  String orientation = ( appWidth >= appHeight ) ? ls : p ; //Ternary Operator, repeats IF-ELSE to populate variables
  println (DO, orientation);
  //if ( orientation==p ) println(instruct); //Testing the orientation variable
  if ( orientation==ls ) {
    println("Good to Go");
  } else { //Break our app if not landscape
    println(instruct);
    appWidth = appWidth*0; //displayWidth
    appHeight = appHeight*0; //displayHeight
  } 
  println( "App Width:", appWidth, "\tApp Height:", appHeight );
  //
  //Population
  buttonX1 = appWidth*1/4;
  buttonY1 = appHeight*3/4;
  buttonWidth1 = appWidth*1/5;
  buttonHeight1 = appHeight*1/5;
  buttonX2 = appWidth*3/4;
  buttonY2 = buttonY1;
  buttonWidth2 = buttonWidth1;
  buttonHeight2 = buttonHeight1;
  rectDisplayX = appWidth*1/8;
  rectDisplayY = appHeight*1/8;
  rectDisplayWidth = buttonWidth1;
  rectDisplayHeight = buttonWidth1;
  ellipseX = appWidth*6/8;
  ellipseY = rectDisplayY;
  ellipseXDiameter = appWidth*1/8; //formulae similar to square but actually rectangle
  ellipseYDiameter = appHeight*1/8;
  float ellipseRectXCenter = ellipseX + ellipseXDiameter*1/2;
  float ellipseRectYCenter = ellipseY + ellipseYDiameter*1/2;
  x = ellipseRectXCenter;
  y = ellipseRectYCenter;
  xDiameter = ellipseXDiameter;
  yDiameter = ellipseYDiameter;
  //
  //Text Setup
  //String[] fontList = PFont.list(); //To list all fonts available on system
  println("Start of Console");
  //printArray(fontList); //For listing all possible fonts to choose, then createFont
  buttonFont = createFont ("Harrington", 55); //Must also Tools / Create Font / Find Font / Do Not Press "OK"
  //
}//End setup
//
void draw()
{
  background(black);
  rect( buttonX1, buttonY1, buttonWidth1, buttonHeight1 ); //DIV: "Click Me"
  rect( buttonX2, buttonY2, buttonWidth2, buttonHeight2 ); //DIV: "Or Me"
  if ( rectON==true && ellipseON==false ) rect( rectDisplayX, rectDisplayY, rectDisplayWidth, rectDisplayHeight ); //DIV: Display Rectangle
  //rect( ellipseX, ellipseY, ellipseXDiameter, ellipseYDiameter ); //DIV: Display Ellipse
  if ( rectON==false && ellipseON==true ) ellipse(x, y, xDiameter, yDiameter);
  //
  //Text Draw, General Code for any text
  //Note: visualization rectangle is in main program
  fill(purple); //Ink, hexidecimal copied from Color Selector
  textAlign (CENTER, CENTER); //Align X&Y, see Processing.org / Reference
  //Values: [LEFT | CENTER | RIGHT] & [TOP | CENTER | BOTTOM | BASELINE]
  textFont(buttonFont, 25); //Change the number until it fits, largest font size
  //
  //Specific Text per button
  text( buttonText1, buttonX1, buttonY1, buttonWidth1, buttonHeight1 );
  text( buttonText2, buttonX2, buttonY2, buttonWidth2, buttonHeight2 );
  fill(white); //Reset Ink
  //
}//End draw
//
void keyPressed() {
}//End keyPressed
//
void mousePressed()
{
  rectON=false;
  ellipseON=false;
  if ( mouseX>=buttonX1 && mouseX<=buttonX1+buttonWidth1 && mouseY>=buttonY1 && mouseY<=buttonY1+buttonHeight1 ) rectON=true;
  if ( mouseX>=buttonX2 && mouseX<=buttonX2+buttonWidth2 && mouseY>=buttonY2 && mouseY<=buttonY2+buttonHeight2 ) ellipseON=true;
}//End mousePressed
//
//End MAIN
