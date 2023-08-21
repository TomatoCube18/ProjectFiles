module peg_board( size, hole_dm, hole_margin, hole_count = [2,2]) {

	difference() {

		cube( size );

		abs_margin  = hole_margin + hole_dm / 2;

		x_hole_dist = hole_count.x > 1 ? 
		              (size.x - 2 * abs_margin) / (hole_count.x - 1) : 0;

		y_hole_dist = hole_count.y > 1 ? 
		              (size.y - 2 * abs_margin) / (hole_count.y - 1) : 0;

		x_values    = hole_count.x > 1 ? 
					  [abs_margin : x_hole_dist : size.x - abs_margin + 0.1] :
				  	  [size.x / 2];

		y_values    = hole_count.y > 1 ?
		              [abs_margin : y_hole_dist : size.y - abs_margin + 0.1] :
		              [size.y / 2];

		// holes
		for (x = x_values, y = y_values)
	    translate( [x, y, -1] )
	    color( "red" )
	    cylinder( d = hole_dm, h = size.z + 5);

	}

}

peg_board( [100,50,5], hole_dm = 6, hole_margin = 4);

translate( [50,60,0] )
peg_board( [50,50,5], hole_dm = 5, hole_margin = 5, hole_count = [5,5]);


