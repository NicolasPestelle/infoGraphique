// inclusion des couleurs prédéfinies
#include "colors.inc"

// définition de la couleur de fond
background { color Cyan }

// positionnement de la caméra
camera {
  location <0, 2, -3>
  look_at <0, 1, 2>
}

// définition d'une source
light_source { 
  <2, 4, -3>
   color White
}


//equation  x=0
light_source { 
  <-2, 4, -3>
   color White
}

// définition d'une sphère
sphere {
   <0, 1, 12>, 2
   texture {
     pigment { color Yellow }
   }
}

sphere {
   <1, 3, 5>, 1
   texture {
     pigment { color Green }
   }
}

plane {
	<0,0,1>,20
	texture {
		pigment {color Red}	
	}
}
