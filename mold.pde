//vector：描いた点の集合
//thick：線の厚さ
//breadth：線の幅

void mold(PVector[] vector, int thick, int bredth) {

  pushMatrix();
  translate(-width/2, -height/2, 0);

  //正面（赤）
  fill(255, 0, 0);

  beginShape(TRIANGLE_STRIP);

  for (int i=1; i<vector.length; i++) {

    PVector inside_line = PVector.sub(vector[i], vector[i-1]);

    inside_line.setMag(bredth);
    inside_line.rotate(HALF_PI);

    vertex(vector[i].x, vector[i].y, 0);
    vertex(inside_line.x+vector[i].x, inside_line.y+vector[i].y, 0);
  }

  endShape();


  //後ろの面（青）
  fill(0, 0, 255);
  beginShape(TRIANGLE_STRIP);

  for (int i=1; i<vector.length; i++) {

    PVector inside_line = PVector.sub(vector[i], vector[i-1]);

    inside_line.setMag(bredth);
    inside_line.rotate(HALF_PI);

    vertex(vector[i].x, vector[i].y, thick);
    vertex(inside_line.x+vector[i].x, inside_line.y+vector[i].y, thick);
  }
  endShape();


  //上の面（緑）
  fill(0, 255, 0);

  beginShape(TRIANGLE_STRIP);

  for (int i=1; i<vector.length; i++) {

    PVector inside_line = PVector.sub(vector[i], vector[i-1]);

    inside_line.setMag(bredth);
    inside_line.rotate(HALF_PI);


    vertex(vector[i].x, vector[i].y, 0);
    vertex(vector[i].x, vector[i].y, thick);
  }

  endShape();


  //下の面（黄色）
  fill(255, 255, 0);

  beginShape(TRIANGLE_STRIP);

  for (int i=1; i<vector.length; i++) {

    PVector inside_line = PVector.sub(vector[i], vector[i-1]);

    inside_line.setMag(bredth);
    inside_line.rotate(HALF_PI);

    vertex(inside_line.x + vector[i].x, inside_line.y + vector[i].y, 0);
    vertex(inside_line.x + vector[i].x, inside_line.y + vector[i].y, thick);
  }

  endShape();

  popMatrix();
}