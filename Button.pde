class Button {
  PApplet p; //henter PApplet og giver navnet p
  float x, y, w, h; //float angiver decimaltal og her laves værdi x, y, w, h
  String navn; //liste af tal med navnet "navn"
  Action a; //kalder funktionen fra Action

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
    p.fill(255); //farve til knapperne
    p.rect(x, y, w, h); //rektangel laves ud fra de forskellige værdier
    p.fill(0); //farve til tekst i knapperne
    p.text(navn, x+ textWidth(navn)/2+ w/8, y+h/2); //placering af tekst
  }

  void click() { //klik funktionen til knapperne
    if ((mouseX>x)&&(mouseX<x+w)&&(mouseY>y)&&(mouseY<y+h)) {
      a.execute();
    }
  }
}
