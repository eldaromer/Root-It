// Need G4P library
import g4p_controls.*;
import java.text.DecimalFormat;

public void setup(){
  size(100, 150, JAVA2D);
  createGUI();
  
}

public void draw(){
  background(220, 170, 170);
  line(6, 46, 25, 64);
  line(25, 64, 43, 15);
  line(43, 15, 95, 15);
}

public double rootIt(double rot, double num) {
  double test = 0;
  while (Math.pow(test, rot) < num) {
    test += .1;
  }
  test -=.1;
  DecimalFormat df = new DecimalFormat("#.#");
  test = Double.parseDouble(df.format(test));
  
  double approx = 0;
  
  for (int i = 0; i < 100; i++) {
    approx = (((-1*rot*Math.pow(test, rot-1))*test)-(-1*Math.pow(test, rot) + num))/(-1*rot*Math.pow(test, rot-1));
    test = approx;
  }
  
  return approx;
}
