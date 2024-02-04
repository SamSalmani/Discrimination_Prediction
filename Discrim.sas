data discrim;
infile '\\files.unr.edu\users\hsalmanitehrani\Downloads\discrim.dat';
input HiringStatus Education Experience Gender;

proc logistic descend;
model HiringStatus = Education Experience Gender/ctable pprop=0.3 to 0.7 by 0.1;

output out=results;
run;
