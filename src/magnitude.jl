@doc """
### vectorMag
`vectorMag` compute the magnitude of a given input vector.
"""
vectorMag(v::Vector) = (sqrt ∘ sum)(v .^ 2)

@doc """
### vectorDot 
`vectorDot` computes the dot product between two input vectors.
"""
vectorDot(v::Vector, w::Vector)::Float64 = Float64(v' * w)


@doc """
### findAngle
`findAngle` finds the angle between the vector and the positive x-axis. 
Output angle can be in either radians or degrees, specified 
by the Boolean `degMode`` and is rounded to the nearest decimal.
"""
function findAngle(v::Vector, degMode = false)
    return length(v) < 2 ? error("Input vector must be 2-dimensional") :
        degMode ? round(atand(v[2], v[1]), digits = 1) :
        round(atan(v[2], v[1]), digits = 1)
end
