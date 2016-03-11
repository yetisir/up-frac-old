clc
%Compressive Damage Limits
symbolic = true;
if symbolic
    syms ei E m h k d Scy Sty
else
    syms ei m
    E = 12e9;
    h = 0.006;
    k = 2.4e7;
    d = 1.3e7;
end

dc = m*ei;
ep = ei - dc/(1-dc)*Scy/E;
simplify(ep)
%no decreasing plastic strains
condc2 = solve(diff(ep, ei) == 0, m);
condc2 = condc2(2);
disp('Compressive damage limits:')
fprintf('\tm < %s\n', char(condc2))

%Tensile Damage Limits
if symbolic
    syms ec E n N lambda
else
    syms ec n
    E = 12e9;
    N = 30e6;
    lambda = -200;
end
dt = 1-1/(1+ec)^n;
ep = ec - (dt/(1-dt))*(Sty/E);
simplify(ep)
%no negative plastic strains
condt1 = solve(diff(ep, ec) == 0, n);
disp('Tensile damage limits:')
fprintf('\tn < %s\n', char(condt1))
