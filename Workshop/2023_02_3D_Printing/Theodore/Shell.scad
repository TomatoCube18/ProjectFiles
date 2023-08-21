max = 52; 

xyscale = 10;
wall = 1;
base = 1;

zstep = .2; //should be a multiple of layer height

function angle(n) = (n > 1) ? asin(1 / sqrt(n)) + angle(n - 1) : 0;

for(i = [1:max]) rotate(angle(i)) linear_extrude(base + (max + 1 - i) * zstep) difference() {
	offset(wall / 2) polygon(xyscale * [[0, 0], [sqrt(i), 0], [sqrt(i), 1]]);
	offset(-wall / 2) polygon(xyscale * [[0, 0], [sqrt(i), 0], [sqrt(i), 1]]);
}

for(i = [1:max]) rotate(angle(i)) linear_extrude(base) difference() {
	polygon(xyscale * [[0, 0], [sqrt(i), 0], [sqrt(i), 1]]);
}

echo(angle(max + 1) % 360);


