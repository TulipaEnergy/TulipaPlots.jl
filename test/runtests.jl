using Test
using TulipaEnergyModel
using Graphs
using HiGHS

# Folders names
const INPUT_FOLDER = joinpath(@__DIR__, "inputs")
const OUTPUT_FOLDER = joinpath(@__DIR__, "outputs")

# Run all files in test folder starting with `test-` and ending with `.jl`
test_files = filter(file -> startswith("test-")(file) && endswith(".jl")(file), readdir(@__DIR__))
for file in test_files
  include(file)
end
