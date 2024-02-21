using TulipaPlots
using Documenter

DocMeta.setdocmeta!(TulipaPlots, :DocTestSetup, :(using TulipaPlots); recursive = true)

makedocs(;
  modules = [TulipaPlots],
  doctest = true,
  linkcheck = true,
  authors = "TNO <ni.wang@tno.nl> and contributors",
  repo = "https://github.com/TulipaEnergy/TulipaPlots.jl/blob/{commit}{path}#{line}",
  sitename = "TulipaPlots.jl",
  format = Documenter.HTML(;
    prettyurls = get(ENV, "CI", "false") == "true",
    canonical = "https://TulipaEnergy.github.io/TulipaPlots.jl",
    assets = ["assets/style.css"],
  ),
  pages = ["Home" => "index.md", "Example" => "example.md", "Reference" => "reference.md"],
)

deploydocs(; repo = "github.com/TulipaEnergy/TulipaPlots.jl", push_preview = true)
