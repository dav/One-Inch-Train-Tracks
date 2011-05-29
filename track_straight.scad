use <tracks_lib.scad>

module rail_cube(length) {
  cube(size = [inches(0.25),length+inches(0.1),inches(0.13)], center = true);
}

module straight_track(length) {
    union() {
      difference() {
        // main block
        cube(size = [inches(1+5/8),length,inches(0.5)], center = true);

        // right rail
        translate([inches(0.5),0,inches(0.19)]) {
          rail_cube(length);
        }

        // left rail
        translate([inches(-0.5),0,inches(0.19)]) {
          rail_cube(length);
        }

        translate([0,0-(length/2)-inches(-0.14),0]) {
          innie_connector(inches(0.6));
        }
      }

      translate([0,(length/2)+inches(0.15),0]) {
        outie_connector(inches(0.5));
      }
  
    }
}

straight_track(inches(3));