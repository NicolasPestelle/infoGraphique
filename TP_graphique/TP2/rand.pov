#include "colors.inc"

// définition de la couleur de fond
background { color White }

// positionnement de la caméra
camera {
  location <12, 10, -20>
  look_at <12, 10,0>
}

// définition d'une source
light_source {
  <2, 4, -3>
  color White
}

#declare Mseed = seed(116);

#declare I = 0;
#while ( I < 20 )
	#declare random1 = rand(Mseed);
	#declare random2 = rand(Mseed);
	#declare random3 = rand(Mseed);
	#declare random4 = rand(Mseed);
	#declare randomform = rand(Mseed);

	#declare couleur = rgb<random1*255,random2*255,random3*255>/255;
	

	#switch (randomform)
		#range (0,1/3)
			sphere{
				<random1*22,random2*22,random3*5>,random4*1.5
				texture{
					pigment{color couleur}
				}
			}	
		#break
		#range (1/3,2/3)
			sphere{
				<random1*22,random2*22,random3*5>,random4*1.5
				texture{
					pigment{color couleur}
				}
			scale<random1*2,random2*2,random3*2>
			}	
		#break
		#range (2/3,1)
			box{
				<random1*22,random2*22,random3*5>,
				<random1*22+random4*2,random2*22+random4*2,random3*5+random4*2>
				texture{
					pigment{color couleur}
				}
			}	
		#break
	#end
#declare I = I + 1;
#end
