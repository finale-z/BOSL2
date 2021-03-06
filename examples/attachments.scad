include <BOSL2/std.scad>

$fn=32;

cuboid([60,40,40], rounding=5, edges=edges("Z"), anchor=BOTTOM) {
	attach(TOP, BOTTOM) rounded_prismoid([60,40],[20,20], h=50, r1=5, r2=10) {
		attach(TOP) cylinder(d=20, h=30) {
			attach(TOP) cylinder(d1=50, d2=30, h=12);
		}
		attach([FRONT, BACK, LEFT, RIGHT]) cylinder(d1=14, d2=5, h=20) {
			attach(TOP, LEFT, overlap=5) prismoid([30,20], [20,20], h=10, shift=[-7,0]);
		}
	}
}


// vim: noexpandtab tabstop=4 shiftwidth=4 softtabstop=4 nowrap
