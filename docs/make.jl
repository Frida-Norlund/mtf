using mtf
using Documenter

DocMeta.setdocmeta!(mtf, :DocTestSetup, :(using mtf); recursive=true)

makedocs(;
    modules=[mtf],
    authors="Frida-Norlund <82037342+Frida-Norlund@users.noreply.github.com> and contributors",
    repo="https://github.com/Frida-Norlund/mtf.jl/blob/{commit}{path}#{line}",
    sitename="mtf.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://Frida-Norlund.github.io/mtf.jl",
        edit_link="master",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/Frida-Norlund/mtf.jl",
    devbranch="master",
)
