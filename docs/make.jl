using BasicVectorOps
using Documenter

DocMeta.setdocmeta!(BasicVectorOps, :DocTestSetup, :(using BasicVectorOps); recursive=true)

makedocs(;
    modules=[BasicVectorOps],
    authors="Brady Elster",
    sitename="BasicVectorOps.jl",
    format=Documenter.HTML(;
        canonical="https://bradyelster.github.io/BasicVectorOps.jl",
        edit_link="main",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/bradyelster/BasicVectorOps.jl",
    devbranch="main",
)
