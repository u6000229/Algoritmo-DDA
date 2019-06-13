void setup() {//Grupo Jhon Suarez, Leonardo Santana//
  size(300, 300); //Esta multiplicado por 10 para ver las lineas //
  linea a=new linea(50,50,10,10);
  linea a2=new linea(100,5,50,5);
}


void draw() {
}  


class linea {  
float x, y, x0, y0, xf, yf, m;
  
  linea(float xi,float yi,float xf1,float yf1) {
    x0=xi;
    y0=yi;
    xf=xf1;
    yf=yf1;
    x=x0;
    y=y0;
    if(yf-y0<0&&xf-x0<0){
      x=xf;
      y=yf;
      xf=x0;
      yf=y0;
      x0=x;
      y0=y;
    }
    m=(yf-y0)/(xf-x0);
    if (m>1) {
      for (float i=0; i<=(yf-y0); i++) {
        point(x, height-y);
        x=x+(1/m);
        println("x = "+x);
        y++;
      }
    }
    if (m<=1&& m>=0) {
      for (float i=0; i<=(xf-x0); i++) {
        point(x, height-y);
        y = y+m;
        println("y = "+y);
        x++;
      }
    }
    if (m<0) {
      x=xf;
      y=yf;
      xf=x0;
      yf=y0;
      x0=x;
      y0=y;
      m=m*(-1);
    }
  }
 
}
}