int appWidth, appHeight;
//
void display() {
  //Display Geometry
  println( width, height, displayWidth, displayHeight );
  //Swap display key variables for testing
  appWidth = width; //displayWidth
  appHeight = height; //displayHeight
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
}//End display
