use <tracks_lib.scad>
use <track_straight.scad>

// CGAL rendering time = 2 minutes for 4x4 6", 1 hour, 20  minutes for 15x10 2"

// material is 24"x48"

module straight_track_sheet(length) {
  x_offset = inches(7/8);
  y_offset = 0;
  for (y = [0:3]) { //15
    for (x = [0:3]) { //10
      if (y%2==0) {
        translate([x*inches(2.0),y*(length+inches(0.75)),0]) {
          straight_track(length);
        }
      } else {
        translate([x*inches(2.0) + x_offset,y*(length+inches(0.75))+inches(0.25),0]) {
          rotate([0,0,180]) straight_track(length);
        }
      }
    }
  }
}

straight_track_sheet(inches(6));
