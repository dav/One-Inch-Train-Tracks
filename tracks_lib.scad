function inches(in) = in*25.4;

module outie_connector(z) {
  union() {
   cube([inches(0.25),inches(0.3),z], center=true);
   translate([0,inches(0.37),0]) {
    rotate([0,0,90]) cylinder(h=inches(0.50),r=inches(0.25),center=true,$fn=100); 
   }
  }
}

module innie_connector(z) {
  union() {
   cube([inches(0.28),inches(0.3),z], center=true);
   translate([0,inches(0.37),0]) {
    rotate([0,0,90]) cylinder(h=inches(0.51),r=inches(0.28),center=true,$fn=100); 
   }
  }
}

