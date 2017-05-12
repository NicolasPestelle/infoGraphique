#include "colors.inc"

camera {location <0,17,-30> look_at <0,0,0> }
background { White }
light_source { <100,100,-200> rgb 0.9}

lathe {
  quadratic_spline
  5,
  < 0, 0 >, < 4, 0 >, < 3, 5 >, < 5, 7 >, < 4, 7 >
  pigment { YellowGreen }
  finish {ambient .3 phong 1}
}
