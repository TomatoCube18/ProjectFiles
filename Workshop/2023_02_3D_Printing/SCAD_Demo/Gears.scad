Radius = 15;
GearHeight = 4;
Teeth = 30;
ToothSize = (Radius * PI) / Teeth;

module Gear(Size){
for(a = [0 : 360 / (Teeth * Size) * 1.5 : 360-360 / (Teeth
* Size)])
rotate([0, 0, a]) translate([Radius * Size, 0, 0])
scale([2, 1,1])
rotate([0, 0, 45])
cylinder(h = GearHeight, r = ToothSize, $fn = 4);
cylinder(h = GearHeight, r = Radius * Size + ToothSize /
(Teeth * .65), $fn = 99);  
cylinder(h = GearHeight + 4, r = 2, $fn = 99);
} 

Gear(1);
