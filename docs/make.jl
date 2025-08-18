using Fibonacci
using Documenter

DocMeta.setdocmeta!(Fibonacci, :DocTestSetup, :(using Fibonacci); recursive=true)

makedocs(;
    modules=[Fibonacci],
    authors="Constantin Jung <conijung@gmx.de> and contributors",
    sitename="Fibonacci.jl",
    format=Documenter.HTML(;
        canonical="https://constantinjung.github.io/Fibonacci.jl",
        edit_link="master",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/constantinjung/Fibonacci.jl",
    devbranch="master",
)
