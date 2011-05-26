use <tracks_lib.scad>
use <track_straight.scad>
use <track_curved.scad>


straight_track();
//translate([inches(0),inches(-2.02),0]) straight_track();

translate([inches(-1.5),inches(-1),0]) curved_track();
//translate([inches(0.12),inches(-1.725),0]) rotate([0,0,-45]) translate([inches(-2),inches(-1),0]) curved_track();


//for (i = [0:5]) {
//  translate([i*inches(2.0),0,0]) {
    //straight_track();
// }
//}


// train proxy
//translate([inches(4.25),0,inches(0.25)])
//color([128,0,128,1]) cube([inches(1),inches(0.25),inches(0.1)], center=true);





