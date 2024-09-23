int nummera = 0;
int nummerb = 0;
int nummerc = 1;

println(0);
println(1);

for(int e = 0; e < 10; e++){
  nummera = nummerb + nummerc;
    println(nummera);
    nummerb = nummerc;
    nummerc = nummera;
}
