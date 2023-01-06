using jaurs
using Test
using Suppressor
@testset "jaurs.jl" begin
    text = @capture_out begin
        jaurs.command_main(["ytfzf"])
        end 
    @test text == "ytfzf-git\nytfzfim\n"
end
