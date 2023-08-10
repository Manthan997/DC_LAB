%Polar NRZ
clc
clear all;
n = input("Enter the input bit: ")
%n = [1,0,1,0,1];
%mapping 1 = 3V and 0 = 0V

for ii = 1: length(n)
  if n(ii) == 1;
    nn(ii) = 3;
   else nn(ii) = 0;
 endif
 endfor

 %pulse shapping
 i = 1;
 t = 0:0.01 : length(n);
 for j = 1 : length(t)
   if t(j) <= i;
     y(j) = nn(i);
    else
      y(j) = nn(i);
      i = i+1;
   endif
 endfor
plot(t,y,'r-')
axis([0 length(n) -10 10]);
c=cos(2*pi*2*t);
x = y.*c;

%plotting
figure(1)
plot(t, y, 'r-')
axis([0 length(n) -5 5]);
figure(2)
plot(t,x)


