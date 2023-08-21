plate = [100,50,5];

hole_dm     = 6;
hole_margin = 4;

difference() {

	cube( plate );

	abs_margin = hole_margin + hole_dm / 2;

	// lower left hole
	translate
	([
		abs_margin,
		abs_margin,
		-1
	])
	color( "red" )
	cylinder( d = hole_dm, h = plate.z + 5);

	// lower right hole
	translate
	([
		plate.x - abs_margin,
		abs_margin,
		-1
	])
	color( "red" )
	cylinder( d = hole_dm, h = plate.z + 5);

	// upper left hole
	translate
	([
		abs_margin,
		plate.y - abs_margin,
		-1
	])
	color( "red" )
	cylinder( d = hole_dm, h = plate.z + 5);

	// upper right hole
	translate
	([
		plate.x - abs_margin,
		plate.y - abs_margin,
		-1
	])
	color( "red" )
	cylinder( d = hole_dm, h = plate.z + 5);
}

