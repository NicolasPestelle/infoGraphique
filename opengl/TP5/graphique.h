#include <GL/gl.h>
#include <GL/glu.h>
#include <glut.h>
#include <math.h>

#include "point3d.h"

void extrude(point3D t[], int nbt, point3D contour[], int nbsom, int faceAvant, int faceArriere); 

void dessiner(void);
void retailler(GLsizei largeur, GLsizei hauteur);

