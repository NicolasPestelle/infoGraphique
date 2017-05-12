#include "colors.inc"

#macro rondelle (diam_ext, diam_int, eppaisseur)
	difference{
		cylinder{
			<0,0,0>
			<0,eppaisseur,0>, diam_ext	
		}
	
		cylinder{
			<0,-0.00001,0>
			<0,eppaisseur+0.00001,0>, diam_int	
		}
	}
#end

camera {location <0,10,5> look_at <0,0,1> }

light_source {
  	<12, 14, -3>
 	color White
}

object {
  rondelle(2,1.5, 1.0)    
  pigment {Red}
}

object {
  rondelle(3, 2, 0.2)
  pigment {Green}
  translate <-2, 3, 0>
  rotate<0,0,40>
}
