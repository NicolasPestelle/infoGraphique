#include "colors.inc"

camera {location <0,0.8,-0.8> look_at <0,-4,20> }

light_source {
  	<12, 14, -3>
 	color White
}

height_field {
	 jpeg "HF01.jpg"
	 smooth
	 water_level .6

	 pigment {White}
	 translate <-.5,-0.6,0.1> scale <2,.5,2>
}

intersection{

	height_field {
		 jpeg "HF01.jpg"
		 smooth

		 pigment {LightWood}
		 translate <-.5,-0.6,0.1> scale <2,.5,2>
	}


	box {
		<-1,-0.06,0.2>,<1,0.05,2.1>
		pigment {LightWood}
	}
}

intersection{

	height_field {
		 jpeg "HF01.jpg"
		 smooth

		 pigment {ForestGreen}
		 translate <-.5,-0.6,0.1> scale <2,.5,2>
	}


	box {
		<-1,-0.15,0.2>,<1,-0.06,2.1>
		pigment {ForestGreen}
	}
}

intersection{

	height_field {
		 jpeg "HF01.jpg"
		 smooth

		 pigment {Green}
		 translate <-.5,-0.6,0.1> scale <2,.5,2>
	}


	box {
		<-1,-1,0.2>,<1,-0.15,2.1>
		pigment {Green}
	}
}

/*plane{
	<0,1,0>,-0.05
	texture{pigment{Blue}}
}*/
