@doc """
Compute the magnitude of a given vector.
""" ->
function vectorMag(v::Vector)
    return (sqrt ∘ sum)(v.^2)
    # could also write: 
    # v.^2 |> sum |> sqrt 
    # or simply 
    # sqrt(sum(v.^2))
end

# now call the doc with:
# @doc vectorMag 