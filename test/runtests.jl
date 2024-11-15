using BasicVectorOps
using Test

@testset "vectorMagnitude" begin
    # Write your tests here.
    vectorMag([1, 1, 1]) == √3
    vectorMag([2, 1, 2]) == 3.0
    vectorMag([0, 0, 0]) == 0.0
    vectorMag([1 // 2, 1 // 1, 1 // 2]) == √(3 / 2)
end

@testset "findAngle" begin
    # Write your tests here.
    findAngle([2, 1], true) == 26.6
    findAngle([4, 5]) == 0.9
    findAngle([1, 0]) == 0.0
    findAngle([0, 1]) == 1.6 # round(π/2, digits=1)
    findAngle([0, -1]) == -1.6 # round(-π/2, digits=1)
end

@testset "vectorDot" begin
    # Write your tests here.
    vectorDot([0, 0], [0, 0]) == 0.0
    vectorDot([1, 0], [0, 1]) == 0.0
    vectorDot([1, 1], [1, 1]) == 2.0
end
