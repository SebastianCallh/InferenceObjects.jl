using InferenceObjects
using Documenter

DocMeta.setdocmeta!(
    InferenceObjects, :DocTestSetup, :(using InferenceObjects); recursive=true
)

makedocs(;
    modules=[InferenceObjects],
    authors="Seth Axen <seth.axen@gmail.com> and contributors",
    repo="https://github.com/arviz-devs/InferenceObjects.jl/blob/{commit}{path}#{line}",
    sitename="InferenceObjects.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://arviz-devs.github.io/InferenceObjects.jl",
        edit_link="main",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
        "Dataset" => "dataset.md",
        "InferenceData" => "inference_data.md",
    ],
)

deploydocs(; repo="github.com/arviz-devs/InferenceObjects.jl", devbranch="main")
