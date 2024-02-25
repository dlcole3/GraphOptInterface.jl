using Test

@testset "GraphOptInterface.jl Tests" begin
    @testset "$(file)" for file in filter(f -> endswith(f, ".jl"), readdir(@__DIR__))
        if file == "runtests.jl"
            continue
        end
        include(file)
    end
end
