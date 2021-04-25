% RainFall Prediction Program
% -Omercan Devran
% -Ebrahim Shahid

clear all,
clc,
close all;
f=readfis('RainfallPredictor.fis')
a=input('What is the temperature (in Fahrenheit (0-120 degrees) 0=Very Cold, 30=Cold, 60=Normal, 90=Hot, 120=Very Hot ) ? =');
b=input('How much is the humidity percentage ? (1-100, 1 is super dry, 100 very sticky ,60 feels normal)');
c=input('What is the current pressure (From 990 to 1040 Bars,Normally it is around 1020)? =');
d=input('How cloudy is it ?(0-10, 0 is clear sky ,3 few clouds, 5 some clouds, 8 many clouds, 10 is dark sky)');
e=input('How fast is the wind (0-40 Mph ,0 No wind, 5 Breeze, 15 windy, 25 Strong Wind, 40 Very Strong Wind  ) ? =');

g=evalfis([a b c d e ], f);
disp(['Rainfall Prediction : %',num2str(g)])