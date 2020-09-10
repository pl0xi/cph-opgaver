int trafficLightRed, trafficLightYellow, trafficLightGreen, trafficLightGrey, trafficLightBackground, midXPoint, midYPoint, counter;

// Trafiklys signal (Grønt for true, rød for false)
boolean trafficLightSignal;

void setup() {
  size(800, 600);
  frameRate(5);
  trafficLightBackground = 50;

  // Midten af skærmen, langs X-AKSEN
  midXPoint = width/2;
  midYPoint = height/2;

  // Rød trafiklys
  trafficLightRed = 255;

  // Grøn Trafiklys 
  trafficLightGreen = 255;

  // Gul Trafiklys 
  trafficLightYellow = 255;

  // Trafiklys signal status
  trafficLightSignal = false;

  // Trafiklys Counter
  counter = 0;
}

void draw() {
  background(255);

  // Trafiklys boks
  fill(0);
  rectMode(CENTER);
  rect(midXPoint, midYPoint, 100, 350);

  // Trafiklys baggrund til lysene
  for (int i = -110; i <= 110; i += 110) {
    fill(trafficLightBackground);
    noStroke();
    circle(midXPoint, midYPoint+i, 80);
  }

  // Trafiklys signaler
  if (trafficLightSignal == false) {
    trafficLightChange();
    if (counter == 0) {
      fill(trafficLightRed, 0, 0);
      circle(midXPoint, midYPoint-110, 80);
    }
  } else {
    trafficLightChange();
    if (counter == 0) {
      fill(0, trafficLightGreen, 0);
      circle(midXPoint, midYPoint+110, 80);
    }
  }
}

void keyPressed() {
  if (key == '1') {
    trafficLightSignal =! trafficLightSignal;
    counter = 5;
  }
}

void trafficLightChange() {
  if (counter > 0 && trafficLightSignal == false) {
    fill(trafficLightYellow, trafficLightYellow, 0);
    circle(midXPoint, midYPoint, 80);
    counter -= 1;
  } else if (counter > 0 && trafficLightSignal == true) {
    fill(trafficLightRed, 0, 0);
    circle(midXPoint, midYPoint-110, 80);
    fill(trafficLightYellow, trafficLightYellow, 0);
    circle(midXPoint, midYPoint, 80);
    counter -= 1;
  }
}
