/*

TP1 MOOC imprimer en 3D

*/

//finesse des courbes
$fn=100;

//base
translate([0,0,2.5]) cube([40,64,5], center=true);

//forme haute
module triangle(){
	polygon([
				[-15, 0],
				[0, 56],
				[15, 0]
			]);
}

translate([-2.5,0,0]) rotate([90, 0, 0]) linear_extrude(44, center=true) triangle();

//rebord
module rebord(){
	cube([5,64,10], center=true);
	translate([0,0,5]) rotate([90,0,0]) cylinder(d=5, h=64, center=true);
}

translate([20-2.5,0,5]) rebord();