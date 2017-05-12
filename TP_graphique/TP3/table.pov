#include "colors.inc"

#declare RedTable = texture{
	pigment{color Red}
	finish{
		ambient 0.1
	    	diffuse 0.8
		reflection{0.2}	
	}	
}; 

// définition de la couleur de fond
background { color SummerSky }

// positionnement de la caméra
camera {
  	location <5, 10, -20>
  	look_at <0, 0,0>
}

// définition d'une source
light_source {
  	<12, 14, -3>
 	color White
}

// TABLE
union {
	box{
		<-4, 0, -4>,
		<4, 4, 4>
		texture{RedTable}
		rotate<0,-10,0>	
	}

	box{
		<-6, 4, -6>,
		<6, 4.2, 6>
		texture {pigment{Blue transmit .5 filter .6}
			finish{
			    	ambient 0.1
			    	diffuse 0.8
				reflection{0.32}
			}
		}
		rotate<0,-10,0>		
	}
}

// BALL
sphere{
	<0, 6, 0>, 2
	texture { 
		pigment { color Grey }
		finish{
		    	ambient 0.1
		    	diffuse 0.8
			specular 0.8
			metallic 
			reflection{0.32}
		}
	}
}


// GROUND
plane{
	<0,1,0>,0
	texture {
		pigment {hexagon color rgb<77, 255, 166>/255 color White color rgb<166, 166, 166>/255 scale 1}	
	}
}
