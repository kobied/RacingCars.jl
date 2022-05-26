using RacingCars
using Documenter

DocMeta.setdocmeta!(RacingCars, :DocTestSetup, :(using RacingCars); recursive=true)

makedocs(;
    modules=[RacingCars],
    authors="kobied <kedelman@gmail.com> and contributors",
    repo="https://github.com/kobied/RacingCars.jl/blob/{commit}{path}#{line}",
    sitename="RacingCars.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://kobied.github.io/RacingCars.jl",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/kobied/RacingCars.jl",
    devbranch="master",
)
