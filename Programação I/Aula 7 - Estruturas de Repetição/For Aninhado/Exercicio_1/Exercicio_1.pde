size(500, 500);

for (int j=0; j<10; j++) {
  for (int i=0; i<10; i++) {
    stroke(255, 209, 209);
    strokeWeight(3);
    fill(255, 235, 235);
    rect(i*50, j*50, 50, 50);
    noStroke();
    fill(173, 204, 201);
    ellipse(i*50+25, j*50+25, 50, 50);
  }
}
