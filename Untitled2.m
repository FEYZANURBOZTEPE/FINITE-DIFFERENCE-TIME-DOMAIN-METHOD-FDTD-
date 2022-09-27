clear all;

beta=-log(0.001)/1600;
delta_t=2.5E-12;
delta_x = 1.5E-3;
delta = delta_t/delta_x;
tmp = (3E+8*delta_t-delta_x)/(3E+8*delta_t+delta_x);
epsilon_0 = 8.854E-12;
mu_0 = 4*pi*1E-7;


sigma=zeros(1,512);

for i=1:249
epsilon(i) = epsilon_0;
mu(i)= mu_0;
sigma(i) = 0;
end

for i=250:309
epsilon(i) = 4*epsilon_0;
mu(i)= mu_0;
sigma(i) = 0;
end

for i=310:512
epsilon(i) = epsilon_0;
mu(i)= mu_0;
sigma(i) = 0;
end

E0= (2*w*delta_x)/0.001

E_(n)(i) = E

for i = 1:512;
E_(n+1)(i)=E_(n)(i+1)+(tmp*(E_(n+1)(i+1)- E_(n)(i)));
end

for  i = 1:249; 

E_(n+1)(i) = (epsilon(i)/(epsilon(i)+delta_t*sigma(i)))*E_n(i) -(delta_t/(delta_x *(epsilon(i)+delta_t*sigma(i))))* (H_(n+1/2)(i+1/2) - H_(n+1/2)(i-1/2));

H_(n+1/2)(i+1/2)= H_(n-1/2)(i+1/2) - (delta_t/(delta_x * mu(i+1/2)))* (E_n (i+1) - E_n(i));
n=n+1;
end

for  i = 250:309; 

E_(n+1)(i) = (epsilon(i)/(epsilon(i)+delta_t*sigma(i)))*E_n(i) -(delta_t/(delta_x *(epsilon(i)+delta_t*sigma(i))))* (H_(n+1/2)(i+1/2) - H_(n+1/2)(i-1/2));

H_(n+1/2)(i+1/2)= H_(n-1/2)(i+1/2) - (delta_t/(delta_x * mu(i+1/2)))* (E_n (i+1) - E_n(i));
n=n+1;
end

for  i = 310:512; 

E_(n+1)(i) = (epsilon(i)/(epsilon(i)+delta_t*sigma(i)))*E_n(i) -(delta_t/(delta_x *(epsilon(i)+delta_t*sigma(i))))* (H_(n+1/2)(i+1/2) - H_(n+1/2)(i-1/2));

H_(n+1/2)(i+1/2)= H_(n-1/2)(i+1/2) - (delta_t/(delta_x * mu(i+1/2)))* (E_n (i+1) - E_n(i));
n=n+1;
end
