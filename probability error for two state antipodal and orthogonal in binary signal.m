%-----------------------in the name of allah------------------------------
%project:calculating amount of probability error for two state antipodal
% and orthogonal in binary signal
%------step1:calculate the probability erorr for state of antipodal ------

clear all;
close all;
clc;

p0=qfunc(sqrt(2*10^0));  %p0=first amount of antipodal erorr
 for gama_db=(0.5:0.5:35) %gama_db=amount of gama according to db 
     gama=10^(gama_db/10);
     pe_a=qfunc(sqrt(2.*gama));%pe_a= basic formola for antipodal erorr
     p0=[p0,pe_a];

 end

 gama=[0,0.5:0.5:35]
 semilogy(gama,p0,'b')%semilogy( X , Y ) plots x- and y-coordinates using a
 % linear scale on the x-axis and a base-10logarithmic scale on the y-axis.
 % To plot a set of coordinates connected by line segments
 % , specify X and Y as vectors of the same length.

% %------step2:calculate the probability error for state of orthogonal-----

 p1=qfunc(sqrt(2*10^0));  %p1=first amount of orthogonal erorr
 for gama_db=(0.5:0.5:35) %gama_db=amount of gama according to db 
      gama=10.^(gama_db/10);
      pe_o=qfunc(sqrt(gama));%pe_o= basic formola for orthogonal erorr
      p1=[p1,pe_o];
 end

      gama=[0,0.5:0.5:35]
      semilogy(gama,p1,'b')

      semilogy(gama,p0,'b',gama,p1,'r')