@testset "Plotting" begin
  dir = joinpath(dirname(pathof(TulipaEnergyModel)), "..", "test/inputs/Norse")
  energy_problem = run_scenario(dir)
  @testset "Codecov Demands Graphs" begin
    # Prefix is used because TulipaEnergyModel also exports these functions
    TulipaPlots.plot_single_flow(energy_problem, "Asgard_Solar", "Asgard_Battery", 1)
    TulipaPlots.plot_graph(energy_problem)
    TulipaPlots.plot_assets_capacity(energy_problem)
  end
end
