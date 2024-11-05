using BasicVectorOps
using Test

@testset "BasicVectorOps.jl" begin
    # Write your tests here.
    vectorMag([1, 1, 1]) == √3
    vectorMag([1, 2, 1]) == 3.0
    vectorMag([0, 0, 0]) == 0.0
    vectorMag([1//2, 1//1, 1//2]) == √3 / 2
end
