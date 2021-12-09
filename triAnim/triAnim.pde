int[] tri;
int wi = 200;
int he = 200;

void setup() {
  size(800, 800);
  tri = new int[wi*he];
  for (int i = 0; i < wi*he; i ++) {
    tri[i] = i;
  }
  colorMode(HSB);
  frameRate(5000);
}
int i = 0;
int k = 1;
int j = 0;
int jump = 200;
void draw() {
  for(int longs = 0 ; longs < jump; longs ++){
  if ( i< tri.length) {
    int j = int(random(tri.length));
    int temp = tri[i];
    tri[i] = tri[j];
    tri[j] = temp;
    i++;
  } else if (k < tri.length) {
    jump = 500000;
    if (!(j > 0 && tri[j] < tri[j - 1])) {
      j = k;
    }
    if (j > 0 && tri[j] < tri[j - 1]) {
      int temp = tri[j];
      tri[j] = tri[j - 1];
      tri[j - 1] = temp;
      j--;
    } else {
      k++;
    }
  }
  }

  show(tri);
}

void show(int[] li) {
  noStroke();
  for (int i =0; i < wi; i ++) {
    for (int j =0; j < he; j ++) {
      fill(color(map(li[i+j*wi], 0, (wi*he)-1, 0, 255), 255, 255));
      rect(i*4, j*4, 4, 4);
    }
  }
  saveFrame("out/out-####.png");
}
