void GUI_draw() {
  background(black);
  rect( buttonX1, buttonY1, buttonWidth1, buttonHeight1 ); //DIV: "Click Me"
  rect( buttonX2, buttonY2, buttonWidth2, buttonHeight2 ); //DIV: "Or Me"
  if ( rectON==true && ellipseON==false ) rect( rectDisplayX, rectDisplayY, rectDisplayWidth, rectDisplayHeight ); //DIV: Display Rectangle
  //rect( ellipseX, ellipseY, ellipseXDiameter, ellipseYDiameter ); //DIV: Display Ellipse
  if ( rectON==false && ellipseON==true ) ellipse(x, y, xDiameter, yDiameter);
}//End GUI_draw
