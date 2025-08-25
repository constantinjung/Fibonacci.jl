const LIVE_MODE = "LIVE_MODE" in ARGS
if LIVE_MODE
    using Revise
    Revise.revise()
end

using Fibonacci
using Documenter

using Literate
LIT_MD_OUT = joinpath(@__DIR__, "src", "generated")
rm(LIT_MD_OUT; recursive = true, force = true)

LIT_IN = ["the_fibonacci_example_script.jl"]
LIT_IN .= joinpath.(@__DIR__, "src", "literate", LIT_IN)
Literate.markdown.(LIT_IN, LIT_MD_OUT)

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
        "Fibonacci Example" => "example.md",
        "Fibonacci Tutorial" => "generated/the_fibonacci_example_script.md",
    ],
)

if !LIVE_MODE
    deploydocs(;
        repo="github.com/constantinjung/Fibonacci.jl",
        devbranch="master",
    )
end
