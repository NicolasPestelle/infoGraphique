#include <GL/gl.h>
#include <GL/glu.h>
#include <glut.h>
#include <math.h>
#include "graphique.h"
#include "globals.h"

void dessiner(void)
{
  
  glClearColor(0, 0, 0, 1);
  glClear(GL_COLOR_BUFFER_BIT);

  glPointSize(pointSize);
  glLineWidth(pointSize);

  glBegin(GL_POINTS);
  glColor3f(1, 0, 0);
  glVertex2f(mousePoint.x, mousePoint.y);
  glEnd();
  
  glBegin(GL_POINTS);
  glColor3f(1,0,0);
  for(int i = 0; i < 64; i++)
    {
      glVertex2f(cos(i*3.14/32)*0.25-0.5, sin(i*3.14/32)*0.25);
    }
  glEnd();

  glBegin(GL_POLYGON);
  glColor3f(0, 0, 1);
  glVertex2d(0.0, 0.0);
  glVertex2d(0.5, 0.0);
  glVertex2d(0.5, 0.5);
  glVertex2d(0.0, 0.5);
  glEnd();
    
  glFlush();
  return;
}
