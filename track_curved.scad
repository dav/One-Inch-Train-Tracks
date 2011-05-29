use <tracks_lib.scad>

module triangle_block(len) {
  color([28,28,0,1])
    difference() {
      cube(size=[len,len,inches(0.5)], center=false);
      translate([0,0,-0.1]) rotate([0,0,45]) cube(size=[len*2,len*2,inches(0.55)], center=false);
    }
}

module curved_rail(radius) {
  //color([255,0,0,0.8])
  difference() {
    cylinder(h=inches(0.13), r=radius, center=true,$fn=100);
    cylinder(h=inches(0.131), r=(radius-inches(0.25)), center=true,$fn=100);
  }
}

module left_curved_track() {
  union() {
    intersection() {
      difference() {
        cylinder(h=inches(0.5), r=inches(5), center=true,$fn=100);
        cylinder(h=inches(0.51), r=inches(3.5), center=true,$fn=100);

        translate([0,0,inches(0.19)]) {
          curved_rail(inches(3.9));
          curved_rail(inches(4.85));
        }

        translate([inches(4.25),inches(0.148),0]) {
          innie_connector(inches(0.6));
        }
      }
      translate([0,0,inches(-0.26)]) {
        triangle_block(inches(7));
      }
    }

    rotate([0,0,45]) translate([inches(4.25),inches(0.13),0]) {
       outie_connector(inches(0.5));
    }

  }
}

module right_curved_track() {
  translate([inches(7),0,0])
  mirror([1,0,0])
  left_curved_track();
}

translate([inches(-3.5),inches(-2),0]) left_curved_track();
// translate([inches(-3.5),inches(-2),0]) right_curved_track();
