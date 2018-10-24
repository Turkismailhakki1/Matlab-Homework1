%% %% a s�kk�
function result=dozaj(n)
a=60
b=0.05

if n<1
    result=a
else
    result=a+b*dozaj(n-1)
end


end

dozaj(1)
dozaj(375)

cevap= 63.1579

 


%% c s�kk� iterative
n=3;
a1=1;
a2=1;
if n<=2
    result=1
else
    for i=3:n
    temp=a1
    a1=a1+a2
    a2=temp
    end
    result=a1
end

%% c s�kk� recursive
function result=dozaj(n)
a=60
b=0.05

if n<1
    result=a
else
    result=a+b*dozaj(n-1)
end


end


%% b s�kk� 
1.gun = Alfa=60
2.gun = Alfa+(Alfa*Beta)
3.gun = Alfa+(Alfa*Beta)+(Alfa*Beta*Beta)
Sonuc olarak genel denklem= 1/1-Beta,
%% e s�kk�
Hocam de�er vererek yapt�m sorun olmaz san�r�m bir de hold on ile birle�tiremedim yazd�m ama ayr� ayr� ��k�yor

clear all; close all; clc;

x = [ 1 1.6 3.16 5.056 8.0896 12.94336]; 

nx = -1:4;
figure; stem (nx,x,'bo','LineWidth',2,'MarkerSize',6,'MarkerFaceColor','b'); xlabel ('Gunler'); ylabel('Alinan Toplam Doz Miktari') ; title ('Kandaki ilac dozu miktar�/g�n oran�');

h =  [  9  10 12 13.2 15.1 16.3 17.7 18.9 20.1];

hold on

nh = -2:6;
figure; stem (nh,h,'mo','LineWidth',2,'MarkerSize',6,'MarkerFaceColor','m'); xlabel ('Gunler'); ylabel('Alinan Toplam Doz Miktari') ; title ('Kandaki ilac dozu miktar�/g�n oran�');

  y = conv(x,h);
  nmin = -1 - 2; nmax = 4 + 6;
  n = nmin:nmax;
  figure; stem(n,y, 'ro','LineWidth',2,'MarkerSize',6,'MarkerFaceColor','r'); xlabel ('Gunler'); ylabel('Alinan Toplam Doz Miktari') ; title ('Kandaki ilac dozu miktar�/g�n oran�]');
hold off
%% d ��kk�
Hocam Timer kodunu kullanmad�m, yazamad�m yani o y�zden ayn� i�i yapam 'Tic Toc' kodunu buldumonunla sayd�rd�m.

tic
n=3;
a1=1;
a2=1;
if n<=2
    result=1
else
    for i=3:n
    temp=a1
    a1=a1+a2
    a2=temp
    end
    result=a1
end
toc

CEVAP = Elapsed time is 0.005465 seconds.
