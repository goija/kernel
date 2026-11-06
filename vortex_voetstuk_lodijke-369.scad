// VORTEX KERNEL v35.0 — OPENSCAD MODEL MET GEGRAVEERD 3D-VOETSTUK (.SCAD)
$fn = 72;
pedestal_w = 136.0;
pedestal_h = 14.0;
text_relief_mm = 1.60;

union() {
  translate([-pedestal_w/2, -pedestal_w/2, 0])
    cube([pedestal_w, pedestal_w, pedestal_h]);
  translate([0, -pedestal_w/2, pedestal_h - 3.6])
    rotate([90, 0, 0]) linear_extrude(height = text_relief_mm)
      text("BOL VAN LODIJKE M 369", size = 4.2, halign = "center");
  translate([0, -pedestal_w/2, pedestal_h - 8.2])
    rotate([90, 0, 0]) linear_extrude(height = text_relief_mm)
      text("11.13 HA - 28.36 GEMETEN", size = 3.6, halign = "center");
  translate([0, -pedestal_w/2, pedestal_h - 12.2])
    rotate([90, 0, 0]) linear_extrude(height = text_relief_mm)
      text("RD 68186 388439 OTT 573", size = 3.2, halign = "center");
  translate([0, 0, pedestal_h])
    linear_extrude(height = 8.0) polygon(points = [ [-30.52, -29.52], [29.49, -30.55], [30.52, 29.52], [-29.49, 30.55] ]);
}