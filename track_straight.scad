use <tracks_lib.scad>

module rail_cube() {
  cube(size = [inches(0.25),inches(2.1),inches(0.13)], center = true);
}

module straight_track() {
    union() {
      difference() {
        // main block
        cube(size = [inches(1+5/8),inches(2),inches(0.5)], center = true);

        // right rail
        translate([inches(0.5),0,inches(0.19)]) {
          rail_cube();
        }

        // left rail
        translate([inches(-0.5),0,inches(0.19)]) {
          rail_cube();
        }

        translate([0,inches(-0.86),0]) {
          innie_connector(inches(0.6));
        }
      }

      translate([0,inches(1.15),0]) {
        outie_connector(inches(0.5));
      }
  
    }
}

straight_track();