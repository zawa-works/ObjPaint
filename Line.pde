class Line {
  ArrayList<PVector> points = new ArrayList();

  Line() {
  }

  void draw() {
    if (mousePressed) {

      pushMatrix();

      stroke(0);
      strokeWeight(10);
      points.add(new PVector(mouseX, mouseY));
      point(mouseX, mouseY);

      popMatrix();
    }
  }

  PVector[] array() {
    return points.toArray(new PVector[0]);
  }
}