using Fibonacci
using Test

@testset "Fibonacci.jl" begin
    # Write your tests here.
    @test fibonacci(0) == (BigInt(0), BigInt(1))
    @test fibonacci(1) == (BigInt(1), BigInt(1))
    @test fibonacci(30) == (BigInt(832040), BigInt(1346269))
end
