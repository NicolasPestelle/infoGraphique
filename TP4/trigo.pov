#include "colors.inc"

camera {location <10,10,-30> look_at <10,4,1> }
background { color Cyan }
light_source {
  	<5, 5, -13>
 	color White
}


difference{
	sphere{
		<0,0,0>,5
		texture{pigment{Brown}}
	}

	#declare I = 0;
	#while ( I < 15 )
		#declare X = -5*cos(3.14*I/15);
		#declare Z = -5*sin(3.14*I/15);
		sphere{
			<X,0,Z>,0.3
			texture{pigment{Brown}}
		}
		
		#declare I = I + 1;
	#end
}

difference{
	difference{
		sphere{
			<20,0,0>,5
			texture{pigment{White}}
		
		}
		sphere{
			<20,0,0>,4.9
			texture{pigment{White}}
		
		}
	}

	#declare I = 0;
	#declare Mseed = seed(11645);
	#while ( I < 20 )
	       	#declare random1 = rand(Mseed);
		#declare random2 = rand(Mseed);
		#declare random3 = rand(Mseed);
		
		#declare PHI = 3.14/random1;
		#declare THETA = 2*3.14/random3;
		#declare X = (5*sin(THETA)*cos(PHI))+20;
		#declare Y = 5*sin(PHI);
		#declare Z = 5*sin(THETA)*cos(PHI);
		sphere{
			<X,Y,Z>,random2*1.5
			texture{pigment{White}}
		}
		
		#declare I = I + 1;
	#end
}

		/*#declare PHI = 3.14;
		#declare THETA = 2*3.14/3;
		#declare X = 5*sin(THETA)*cos(PHI);
		#declare Y = 5*sin(PHI);
		#declare Z = 5*sin(THETA)*cos(PHI);
		sphere{
			<X,Y,Z>,1 
			texture{pigment{White}}
		}*/


