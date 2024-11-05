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

@doc """
Compute the dot product between two vectors.
""" ->
function vectorDot(v::Vector, w::Vector)::Float64
    return Float64(v' * w)
end

@doc """
Find the angle between the vector and the positive abscissa (x-axis). 
Output angle can be in either radians or degrees, specified by the 'mode' 
and is rounded to the nearest decimal.
""" ->
function findAngle(v::Vector, mode="rad")
    try
        if mode == "deg"
            return round(atand(v[2], v[1]), digits=1)
        elseif mode == "rad"
            return round(atan(v[2], v[1]), digits=1)
        end
    catch
        # error condition
        if length(v) < 2
            error("input vector must be 2-dimensional")
        elseif mode !== "deg" || mode !== "rad"
            error("input mode not recognized.")
        else 
            return 0.0
        end
    end
end