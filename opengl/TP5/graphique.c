#include "graphique.h"
#include <malloc.h>

void extrude(point3D t, point3D contour[], int nbsom)
{
  glColor3f(1, 0, 0);
  glBegin(GL_POLYGON);
  for(int i = 0; i < nbsom; i++)
    {
      glVertex3f(contour[i].x, contour[i].y, contour[i].z);
    }
    glEnd();

  glColor3f(0, 1, 0);
  glBegin(GL_POLYGON);
  for(int i = 0; i < nbsom; i++)
    {
      glVertex3f(contour[i].x+t.x, contour[i].y+t.y, contour[i].z+t.z);
    }
  glEnd();

  glColor3f(0, 0, 1);
  glBegin(GL_QUADS);
  for(int i = 0; i < nbsom; i++)
    {
      glVertex3f(contour[i].x, contour[i].y, contour[i].z);
      glVertex3f(contour[i].x+t.x, contour[i].y+t.y, contour[i].z+t.z);
      if(i < nbsom-1)
	{
	  glVertex3f(contour[i+1].x+t.x, contour[i+1].y+t.y, contour[i+1].z+t.z);
	  glVertex3f(contour[i+1].x, contour[i+1].y, contour[i+1].z);
	}
      else
	{
	  glVertex3f(contour[0].x+t.x, contour[0].y+t.y, contour[0].z+t.z);
	  glVertex3f(contour[0].x, contour[0].y, contour[0].z);
	}
    }
  glEnd();
}

static void repere(float dim)
{

  glBegin(GL_LINES);
 
  glColor3f(0.0, 0.0, 0.0);
  glVertex3f(-dim, 0.0, 0.0);
  glVertex3f( dim, 0.0, 0.0);
  glVertex3f(0.0,-dim, 0.0);
  glVertex3f(0.0, dim, 0.0);
  glVertex3f(0.0, 0.0, -dim);
  glVertex3f(0.0, 0.0,  dim);

  glEnd();
}

void dessiner(void)
{
  /* effacer l'ecran */
  glClearColor(1.0, 1.0, 1.0, 1.0);

  /* raz de la fenetre avec la couleur de fond */
  glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);

  //glMatrixMode(GL_MODELVIEW);
  
  glLoadIdentity();

  int nbPoints = 3;
  //  struct point3D *tri;
  //  tri = (point3D*)malloc(3*sizeof(point3D));
  
  point3D tri[] = {{-0.5,0,0},{0.5,0,0},{0.25,0.5,0}};
  point3D trans = {0.5,0.5,1};

  //glRotatef(10, 1, 1, 0);
  extrude(trans,tri,nbPoints);

  //repere(2.0);
  
  glFlush();
  //glutSwapBuffers();
  return;
}

extern void retailler(GLsizei largeur, GLsizei hauteur)
{
  int cote = hauteur;
  if(hauteur > largeur)
    cote = largeur;
  
  glViewport(largeur/2 - cote/2,hauteur/2 -cote/2, cote, cote);

  glMatrixMode(GL_PROJECTION);
  
  glutPostRedisplay();
}

