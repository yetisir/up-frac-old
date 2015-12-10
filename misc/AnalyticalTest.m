E = 12e9;
nu = 0.3;
e = [0; 0.01; 0];
C = E/((1+nu)*(1-2*nu))*...
    [1-nu, nu, 0;
    nu, 1-nu, 0;
    0, 0, 0.5*(1-2*nu)];
S_voight = C*e;
S_tensor = [S_voight(1), S_voight(3); 
    S_voight(3), S_voight(2)];

disp(S_tensor)