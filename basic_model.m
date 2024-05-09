function [iterative_change] = basic_model(time,input_vector, sign)
%% Author:
% by Nicholas Fioravanti (nef46@drexel.edu)

%% Function Summary:
% Models the covid exposure, susceptiblity, infectious, recovered
% populations based on article
%% Inputs: 
% time: the timespan over which the result needs to be evaluated
% input_vector: a vector containing the initial conditions of the system of
% differential equations. 
%% Function 
if nargin < 3
    r2 = 18; % contact rate - probability of latent persons being infected; taken from table 1 
elseif nargin >=3 
    r2 = sign;
end
%% Unpack input vector of initial concentrations 
E = input_vector(2); % exposed - latent individuals and those capable of spreading SARS-CoV-2 
S = input_vector(1); % susceptible - vulnerable to SARS-CoV-2 infection 
I = input_vector(3); % Infectious - symptomatic, capable of spreading SARS-CoV-2
R = input_vector(4); % Recovered - immune to the SARS-CoV-2 
% Define Constants
% N = 11081000; % total population 
N = E + S + I + R; 


%% Define Constants 
% I = 27; % Infectious - symptomatic, capable of spreading SARS-CoV-2
% R = 2; % Recovered - immune to the SARS-CoV-2
% E = 193; % exposed - latent individuals and those capable of spreading SARS-CoV-2
% S = 11080778; % susceptible - vulnerable to SARS-CoV-2 infection 

% infectious rates control the rate of spread 
B1 = 0.04; % probability of infection per exposure when a suspectible individual has contacted an infected patient and becomes a latent exposed individual 
B2 = 0.02; % potential rate per exposure when a susceptible individual has mutual contact with an exposed individual and transmits it to another exposed individual 
r1 = 6; % contact rate 1 - probability of susceptible persons coming into contact with an infected individual
alpha = 0.14; % incubation rate, or rate of latent individuals becoming infectious where average duration of incubation is 1/alpha
gamma = 0.048; % recovery rate, gamma = 1/D determined by the average duration time (day) 

%% Time Derivative equations of the concentrations related to the process
% Rates (v) taken from around Figure 1 
Sprime = -r1*B1*I*S/N-r2*B2*E*S/N;
Eprime = r1*B1*I*S/N - alpha*E+r2*B2*E*S/N;
Iprime = alpha*E-gamma*I;
Rprime = gamma*I;

% Configure the time derivatives in a vector that is transposed to be a
% column output of this function 
iterative_change = [Sprime, Eprime, Iprime, Rprime]';
end