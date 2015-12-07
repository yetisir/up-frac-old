syms S22 S12 e11
E = 12e9;
nu = 0.3;
S = [0; S22; S12];
e = [e11; 0.05; 0];

C = E/((1+nu)*(1-2*nu))*...
    [1-nu, nu, 0;
    nu, 1-nu, 0;
    0, 0, 0.5*(1-2*nu)];
solution = solve(S == C*e);
strain = vpa(solution.e11)
stress = vpa(solution.S22)
