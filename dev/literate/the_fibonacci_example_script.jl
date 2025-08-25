# # Fibonacci function tutorial
#
# In this tutorial we demonstarte how to use the `fibonacci` function
# form the `Fibonacci.jl` package.
#
# we start by loading the package:

using Fibonacci

# ## First steps
#
# Let's compute the 10th Fibonacci number:

fibonacci(10)

# The result should be `55`.
#
# You can also compute larger values easily:

fibonacci(20)

# which gives `6765`.
#
# For very large `n`, Julia automatically uses `BigInt` to hold the result:

fibonacci(BigInt(100))

# ## Summary
#
# The `fibonacci` function is simple to use:
#
# - Call it with an integer argument `n`.
# - It returns the `n`th Fibonacci number.
# - It works for both `Int` and `BigInt`.
#
# This makes it suitable for teaching, experiments, or mathematical explorations.
