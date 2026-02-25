use application "polytope";
use application "fan";

script("polytopecalculations/datascript.pl");

declare $p= new Polytope(POINTS=>$pts);

open(FH, '>', "polytopecalculations/output.pl");
print FH '{"';
print FH $p-> FACETS;
print FH '","';
print FH $p->VERTICES;
print FH '","';
print FH $p->AFFINE_HULL;
print FH '","';
print FH $p->GRAPH->EDGE_DIRECTIONS;
print FH '"}';
close(FH);
