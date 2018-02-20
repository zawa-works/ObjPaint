ArrayList<Line> lines = new ArrayList();
Line line = new Line();

boolean paintable = true;
float angle = 0;

void setup() {
  size(1500, 800, P3D);
  background(-1);
}

void draw() {

  if (paintable) {
    line.draw();
    return;
  }


  background(-1);

  translate(width/2, height/2, 0);//図形の中心座標

  //色々と回す
  rotateX(angle);
  // rotateY(angle);
  //rotateZ(angle);

  for (int i = 0; i < lines.size(); i++) {
    Line points = lines.get(i);

    noStroke();
    mold(points.array(), 50, 100);
  }

  angle+= radians(1);
}


void mouseReleased() {
  if (!paintable)return;

  lines.add(line);
  line = new Line();
}

void keyPressed() {
  paintable = false;
}