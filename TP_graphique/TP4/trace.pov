#include "colors.inc"

camera {location <9,12,30> look_at <9,0,1> }
light_source {
  	<0, 20, 13>
 	color White
}

// un modèle simple de sapin
// centré sur l'axe 0y - dans <-0.3, 0.0, -0.3> - <-0.3, 0.5, -0.3>
#declare sapin = union {
  cylinder { <0,0,0>,<0,0.25,0>, 0.1 pigment {color Brown} }
  cone { <0,0.25,0>,0.3,<0,0.35,0>, 0.0 pigment {color Green} }
  cone { <0,0.30,0>,0.3,<0,0.40,0>, 0.0 pigment {color Green} }
  cone { <0,0.35,0>,0.3,<0,0.45,0>, 0.0 pigment {color Green} }
  cone { <0,0.40,0>,0.3,<0,0.50,0>, 0.0 pigment {color Green} }
}

#declare sol = box{
	<-100,0,-100>,
	<100,0.0001,100>
	texture{pigment{Brown}}
}

object{sol}


#declare I = 0;
#while ( I < 10 )
       #declare J = 0;
       #while ( J < 10 )

       	      #declare Point_Intersection = trace ( sol,
              	    <I*2,3,J*2>,
              	    <0,-1,0>
              );

       	      object{
		sapin
	      	scale<1,4,1>
		translate Point_Intersection
	      }

	      #declare J = J + 1;
       #end
       #declare I = I + 1;
#end