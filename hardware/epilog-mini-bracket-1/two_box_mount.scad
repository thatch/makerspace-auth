box_hole_locations=[
  [30,107],
  [80,107],
  [130,107],
  [217,107],

  [30,255],
  [80,255],
  [130,294],
  [217,294],
];

frame_hole_locations=[
  [20,20],
  [62,305],
];

plate_width=235;
plate_height=325;

module Plate(cap_size) {
  difference() {
    square([plate_width, plate_height]);
    translate([0,plate_height-30]) rotate(atan2(30, 40)) square([100,100]);
    for(p = box_hole_locations)
      translate(p) circle(d=cap_size);
    for(p = frame_hole_locations)
      translate(p) circle(d=4.5);
  }
}

Plate(cap_size=25,$fn=128);
translate([plate_width+4,0])
Plate(cap_size=4.2,$fn=128);
