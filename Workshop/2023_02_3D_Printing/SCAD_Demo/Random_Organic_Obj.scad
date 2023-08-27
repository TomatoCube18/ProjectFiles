X = rands(0, 10, 100);
Y = rands(0, 10, 100);
Z = rands(0, 10, 100);
S = rands(.5, 2, 100);
for (N = [0 : 99]){
translate([X[N], Y[N], Z[N]]) sphere(S[N], $fn = 99);
}

