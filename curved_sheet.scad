use <tracks_lib.scad>
use <track_curved.scad>

// CGAL rendering time = 15 minutes

// material is 24"x48"

// TODO figure out a plan for making rails on both sides of track.

module curved_track_sheet() {
  x_offset = inches(7/8);
  y_offset = 0;
  for (y = [0:5]) {
    for (x = [0:6]) {
      if (y%2==0) {
        translate([x*inches(2.0),y*inches(4.25),0]) {
          rotate([0,0,-20]) left_curved_track();
        }
      } else {
        translate([x*inches(2.0)+inches(0.75),y*inches(4.25)-inches(2.25),0]) {
          rotate([0,0,20]) right_curved_track();
        }
      }
    }
  }
}

curved_track_sheet();