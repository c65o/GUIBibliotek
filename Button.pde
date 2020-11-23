class Button {
  PApplet p;
  float x, y, w, h;
  String navn;
  Action a;

  Button(int x, int y, int w, int h, String navn, PApplet p) {
    this.x=x;
    this.y=y;
    this.w=w;
    this.h=h;
    this.navn=navn;
    this.p=p;
  }

  void addAction(Action a) {
    this.a=a;
  }

  void display() {
    p.fill(255);
    p.rect(x, y, w, h);
    p.fill(0);
    p.text(navn, x+ textWidth(navn)/2+ w/8, y+h/2);
  }

  void click() {
    if ((mouseX>x)&&(mouseX<x+w)&&(mouseY>y)&&(mouseY<y+h)) {
      a.execute();
    }
  }
}
