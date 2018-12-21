%% Define threshold for pruning edges
thresh = 1e-2;

%% Import the data
%% fluxes_23_main_dataset.xlsx is the resource-limited example, 
%% while fluxes_90_main_dataset.xlsx is the diverse example. Changing
%% the suffix to 'dense_metabolism' loads the networks for the dense
%% metabolic matrix
[~, ~, raw] = xlsread('fluxes_90_dense_metabolism.xlsx','Sheet1');
raw = raw(4:end,3:end);

%% Create output variable
fluxes = reshape([raw{:}],size(raw));

fluxes((fluxes/max(max(fluxes)))<thresh) = 0;

G = digraph(fluxes');

%% Clear temporary variables
clearvars raw;

%% Plot the graph
fig = figure;
h = plot(G,'LineWidth',10*G.Edges.Weight/max(G.Edges.Weight),'Layout','layered','Sources',[1],'NodeLabel',{});
print(fig,'Network_90_dense','-depsc')

%% Do it again
[~, ~, raw] = xlsread('fluxes_23_dense_metabolism.xlsx','Sheet1');
raw = raw(4:end,3:end);

%% Create output variable
fluxes = reshape([raw{:}],size(raw));

fluxes((fluxes/max(max(fluxes)))<thresh) = 0;

G = digraph(fluxes');

%% Clear temporary variables
clearvars raw;

%% Plot the graph
fig = figure;
h = plot(G,'LineWidth',10*G.Edges.Weight/max(G.Edges.Weight),'Layout','layered','Sources',[1],'NodeLabel',{});
print(fig,'Network_23_dense','-depsc')
