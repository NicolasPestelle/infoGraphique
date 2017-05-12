// inclusion des couleurs prédéfinies
#include "colors.inc"
#include "stones.inc"

// définition de la couleur de fond
background { color Cyan }

// positionnement de la caméra
camera {
  location <0, 10, -20>
  look_at <0, 0, 2>
}

// définition d'une source
light_source { 
  <2, 4, -3>
   color White
}

difference {
	union {
		cone {
			<-5,-5,0>, 4.5
			<-5,-1,0>, 6
			texture{pigment {color Orange}}
		}

		cylinder {
			<-5,-5,0>, 
			<-5,-5.1,0>, 4.5
			texture{pigment {color Orange}}	
		}
	}
	
	cone {
		<-5,-4.8,0>, 4.2
		<-5,-0.9,0>, 5.8
		texture{pigment {color Grey}}
	}
}

cylinder {
	<-5,-4,0>, 
	<-5,4,0>,1
	texture{pigment {color Orange}}	
	rotate <30,40,0>
	translate <2,0,0>
}

plane {
	<0,-6,0>,5.1
	texture {
		T_Stone1
	}
}
