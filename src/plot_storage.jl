export plot_storage_level_inter, plot_storage_level_intra

"""
    plot_storage_level_inter(energy_problem)

Given an energy problem, display a line graph of the inter storage level.
"""
function plot_storage_level_inter(energy_problem::EnergyProblem)
  df_storage_level_inter = energy_problem.dataframes[:storage_level_inter_rp]

  unit_ranges = df_storage_level_inter[!, :base_period_block]
  end_values = [range[end] for range in unit_ranges]
  df_storage_level_inter[!, :time] = end_values

  @df df_storage_level_inter StatsPlots.plot(
    :time,
    :solution,
    group = :asset,
    legend = :topleft,
    layout = 2,
    legend_font_pointsize = 6,
    size = (800, 600),
  )
end

"""
    plot_storage_level_intra(energy_problem)

Given an energy problem, display a line graph of the intra storage level.
"""
function plot_storage_level_intra(energy_problem::EnergyProblem)
  df_storage_level_intra = energy_problem.dataframes[:lowest_storage_level_intra_rp]

  unit_ranges = df_storage_level_intra[!, :time_block]
  end_values = [range[end] for range in unit_ranges]
  df_storage_level_intra[!, :time] = end_values

  @df df_storage_level_intra StatsPlots.plot(
    :time,
    :solution,
    group = (:asset, :rp),
    legend = :topleft,
    layout = 2,
    legend_font_pointsize = 6,
    size = (800, 600),
  )
end
