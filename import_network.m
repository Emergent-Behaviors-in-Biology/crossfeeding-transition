%% Define threshold for pruning edges
thresh = 1e-2;

%% Import the data
%% fluxes_23.xlsx is the resource-limited example, while fluxes_90.xlsx is the diverse example
[~, ~, raw] = xlsread('fluxes_90.xlsx','Sheet1');
raw = raw(4:end,3:end);

%% Create output variable
fluxes = reshape([raw{:}],size(raw));

fluxes((fluxes/max(max(fluxes)))<thresh) = 0;

G = digraph(fluxes');

%% Clear temporary variables
clearvars raw;

%% Plot the graph
plot(G,'LineWidth',10*G.Edges.Weight/max(G.Edges.Weight),'Layout','layered','Sources',[1])
