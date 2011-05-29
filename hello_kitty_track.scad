// track lib scad files can be found here: https://github.com/dav/One-Inch-Train-Tracks
use <tracks_lib.scad>
use <track_curved.scad>
use <track_straight.scad>

// HK_3mm.stl is from http://www.thingiverse.com/thing:5935

union() {
  translate([inches(-2.85),inches(-0.25),inches(-0.25)]) scale([2,2,0.75]) import_stl("HK_3mm.stl");  
  translate([0,0,0]) rotate([0,0,90]) straight_track(inches(6));
}
