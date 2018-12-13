# crossfeeding-transition

## Introduction
This repository contains the simulation data analyzed in Marsland et al. (2018), "Available energy fluxes drive a transition in the diversity, stability, and functional structure of microbial communities." A detailed description of the algorithms for data generation and analysis, as well as the structure of the data files can be found in the Appendices of the manuscript file `Marsland2018.pdf`. 

## Dependencies
The Jupyter notebook `Analysis.ipynb` contains the Python code for loading the data and reproducing the plots from the manuscript and supplement. It requires prior installation of the Community Simulator package, which can be found at <https://github.com/Emergent-Behaviors-in-Biology/community-simulator>. *To run the notebook, you must use the `crossfeeding-transition` branch of this repository.* Subsequent improvements in code structure and variable names will cause the function calls in this notebook to fail with the latest version of the package.

## Data generation
To re-run the simulations from scratch, switch to the `cluster` branch, which contains the version of the package that we had installed on the computing cluster for generating all the data. It includes a set of scripts that can generate all the data contained here.
