@testset "Plotting" begin
  dir = joinpath(INPUT_FOLDER, "Norse")
  energy_problem = run_scenario(dir; optimizer = HiGHS.Optimizer)
  @testset "Codecov Demands Graphs" begin
    plot_single_flow(energy_problem, "Asgard_Solar", "Asgard_Battery", 1)
    plot_graph(energy_problem)
    plot_assets_capacity(energy_problem)
  end
end
