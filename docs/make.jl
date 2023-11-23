using QViz
using Documenter

DocMeta.setdocmeta!(QViz, :DocTestSetup, :(using QViz); recursive=true)

makedocs(;
    modules=[QViz],
    authors="Yusheng Zhao <yushengzhao2020@outlook.com> and contributors",
    repo="https://github.com/exAClior/QViz.jl/blob/{commit}{path}#{line}",
    sitename="QViz.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://exAClior.github.io/QViz.jl",
        edit_link="main",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/exAClior/QViz.jl",
    devbranch="main",
)
