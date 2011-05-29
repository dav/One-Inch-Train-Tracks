use <tracks_lib.scad>
use <track_straight.scad>
use <track_curved.scad>

module demo() {
  straight_track();
//  translate([inches(0),inches(-2.02),0]) straight_track();

  translate([inches(-1.8),inches(0),0]) left_curved_track();
//  translate([inches(0.32),inches(-0.725),0]) rotate([0,0,-45]) translate([inches(-2),inches(-1),0]) left_curved_track();

  translate([inches(-4.8),inches(0),0]) right_curved_track();
//  translate([inches(-3),inches(-2.725),0]) rotate([0,0,45]) translate([inches(-2),inches(-1),0]) right_curved_track();

}

module train_proxy() {
  //translate([inches(4.25),0,inches(0.25)])
  color([128,0,128,1]) cube([inches(1),inches(0.25),inches(0.1)], center=true);
}

// material is 24"x48"

module straight_track_sheet() {
  x_offset = inches(7/8);
  y_offset = 0;
  for (y = [0:15]) {
    for (x = [0:10]) {
      if (y%2==0) {
        translate([x*inches(2.0),y*inches(2.75),0]) {
          straight_track();
        }
      } else {
        translate([x*inches(2.0) + x_offset,y*inches(2.75)+inches(0.25),0]) {
          rotate([0,0,180]) straight_track();
        }
      }
    }
  }
}

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

translate([inches(-4.25),0,0]) left_curved_track();
train_proxy();

