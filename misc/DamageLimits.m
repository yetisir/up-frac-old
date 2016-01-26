clc
%Compressive Damage Limits
symbolic = true;
if symbolic
    syms ei E m h k d
else
    syms ei m
    E = 12e9;
    h = 0.006;
    k = 2.4e7;
    d = 1.3e7;
end
a = (d-k)/h^2;
Sc = a*(ei-h)^2+k;
dc = m*ei;
ep = ei - dc/(1-dc)*Sc/E;
%no negative plastic strains
condc1 = solve(ep==0, m);
%no decreasing plastic strains
condc2 = solve(diff(ep, ei) == 0, m);
condc2 = condc2(2);
disp('Compressive damage limits:')
fprintf('\tm < %s\n', char(condc1))
fprintf('\tm < %s\n', char(condc2))
f = limit(condc2, ei, 0)
if ~symbolic
    mMax = min([limit(condc1, ei, 0), subs(condc1, ei, 0.01),...
        limit(condc2, ei, 0), subs(condc2, ei, 0.01)])
    fprintf('\tMaximum m = %.2f\n', double(mMax))
end
vpa(subs(condc2, ei, 0.01))
%Tensile Damage Limits
if symbolic
    syms ec E n N lambda
else
    syms ec n
    E = 12e9;
    N = 30e6;
    lambda = -200;
end
St = N*exp(lambda*ec);
dt = 1-1/(1+ec)^n;
ep = ec - (dt/(1-dt))*(St/E);
%no negative plastic strains
condt1 = solve(ep==0, n);
if ~symbolic
    nMax = min([limit(condc1, ei, 0), subs(condc1, ei, 0.01)]);
    fprintf('\tMaximum n = %.2f\n', double(nMax))
end

disp('Compressive damage limits:')
fprintf('\tm < %s\n', char(condt1))

if ~symbolic
   subplot(1, 2, 1)
   h1 = ezplot(condc1, [0, 0.01]);
   set(h1, 'Color', 'b')
   hold on 
   h2 = ezplot(condc2, [0, 0.01]);
   set(h2, 'Color', 'r')
   hold off
   subplot(1, 2, 2)
   dt = subs(dt, n, 300)
   ezplot(dt, [0, 0.01])
%    h1 = ezplot(St, [0, 0.01]);
%    set(h1, 'Color', 'b')
%    hold on 
%    h2 = ezplot(dt, [0, 0.01]);
%    set(h2, 'Color', 'r')
%    hold off
end