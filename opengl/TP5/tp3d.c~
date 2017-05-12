#include <GL/gl.h>
#include <GL/glu.h>
#include <glut.h>

#include "graphique.h"

#define LARGEUR 500
#define HAUTEUR 500

static void init_screen(void)
{
  glViewport(0, 0, LARGEUR, HAUTEUR);
  
  glMatrixMode(GL_PROJECTION);
  glLoadIdentity();
  gluPerspective(60.0, 1, 1, 50);
}

int main(int argc, char *argv[])
{
  glutInit (&argc, argv);
  
  glutInitWindowPosition(100, 100); 
  glutInitWindowSize(LARGEUR, HAUTEUR); 

  glutInitDisplayMode(GLUT_DEPTH);

  glutCreateWindow(argv[0]);
  
  glClearColor(1, 1, 1, 1);
  glClear(GL_COLOR_BUFFER_BIT);

  glutDisplayFunc(dessiner);
  glutReshapeFunc(retailler);

  init_screen();
  
  glEnable(GL_DEPTH_TEST);
  glutMainLoop();
  
  return 0;
}
