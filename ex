function delta = impulso(t)
delta=1*(t==0);
endfunction

function u = degrau(t)
u=1*(t>=0);
endfunction

function r = rampa(t)
r=t;
endfunction

xD = -1:4;
que_quando_fala_ex = rampa(xD).*(degrau(xD) - degrau(xD - 2));
vem_ela_na_cabeca_mesmo_tendo_outras_seis = -2*rampa(xD - 3).*(degrau(xD - 2) - degrau(xD - 3));
//plot(xD, rampa(xD).*(degrau(xD) - degrau(xD - 2)));
//plot(xD,-2*rampa(xD - 3).*(degrau(xD - 2) - degrau(xD - 3)));
plot(xD, que_quando_fala_ex + vem_ela_na_cabeca_mesmo_tendo_outras_seis);
