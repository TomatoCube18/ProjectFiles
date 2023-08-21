plate = [100,50,5];

hole_dm     = 6;
hole_margin = 4;

difference() {

	cube( plate );

	abs_margin  = hole_margin + hole_dm / 2;
	x_hole_dist = plate.x - 2 * abs_margin;
	y_hole_dist = plate.y - 2 * abs_margin;
	x_values    = [abs_margin : x_hole_dist : plate.x - abs_margin];
	y_values    = [abs_margin : y_hole_dist : plate.y - abs_margin];

	// holes
	for (x = x_values, y = y_values)
    translate( [x, y, -1] )
    color( "red" )
    cylinder( d = hole_dm, h = plate.z + 5);

}


