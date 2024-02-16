# Example

TulipaPlots.jl has three functions for plotting: a time-series flows, a visualisation of the graph (with asset and flow capacities), and a bar graph of the initial and invested asset capacities. We show an example for plotting using the solution from the Norse case in TulipaEnergyModel.jl.

First obtain the solution:

```@example solution
using TulipaEnergyModel
using TulipaPlots
using Pkg # hide

dir = joinpath(dirname(pathof(TulipaEnergyModel)), "..", "test/inputs/Norse") # hide
# input_dir should be the path to Norse
energy_problem = run_scenario(dir)
```

Plot a single flow for a single representative period:

```@example solution
TulipaPlots.plot_single_flow(energy_problem, "Asgard_Solar", "Asgard_E_demand", 1)
```

Plot the graph, with asset and flow capacities:

```@example solution
TulipaPlots.plot_graph(energy_problem)
```

Graph the final capacities of assets:

```@example solution
TulipaPlots.plot_assets_capacity(energy_problem)
```

If you would like more custom plots, explore the code of [plot](https://github.com/TulipaEnergy/TulipaPlots.jl/blob/main/src/TulipaPlots.jl) for ideas.
