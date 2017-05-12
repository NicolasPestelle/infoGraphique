// inclusion des couleurs prédéfinies
#include "colors.inc"

// définition de la couleur de fond
background { color Cyan }

// positionnement de la caméra
camera {
  location <10, 10, -13>
  look_at <10, 10, 2>
}

// définition d'une source
light_source { 
  <2, 4, -3>
   color White
}

#declare I=0;
#while (I < 5)
	#declare J=0;
	#while (J < 5)
		sphere {
		   <I*5, J*5, 12>, 2
		   texture {
		     pigment { color Yellow }
		   }	
		}
	#declare J = J + 1;
	#end
#declare I = I + 1;
#end

// définition d'une sphère
/*sphere {
   <0, 1, 12>, 2
   texture {
     pigment { color Yellow }
   }
}*/

plane {
	<0,0,1>,20
	texture {
		pigment {color Red}	
	}
}
