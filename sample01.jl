#=
sample01:
- Julia version:
- Author: 摘录于 《The Julia Express》 作者：Bogumił Kami´nski
- Date: 2018-08-15
=#
"""Sieve of Eratosthenes function docstring"""
function es(n::Int) # accepts one integer argument
    isprime = trues(n) # n-element vector of true-s
    isprime[1] = false # 1 is not a prime
    for i in 2:isqrt(n) # loop odd integers less or equal than sqrt(n)
        if isprime[i] # conditional evaluation
            for j in i^2:i:n # sequence with step i
                isprime[j] = false
            end
        end
    end
    return filter(x -> isprime[x], 1:n) # filter using anonymous function
end
println(es(100)) # print all primes less or equal than 100
@time length(es(10^6)) # check function execution time and memory usage