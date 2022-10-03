module mtf

export TrackingFloat

struct TrackingFloat <: AbstractFloat
    value::Float64
    tracked_value::Float64 
end

TrackingFloat(x) = TrackingFloat(x,zero(x))

value(TrackingFloat) = TrackingFloat.value

getmax(TrackingFloat) = TrackingFloat.tracked_value


import Base: +, *, -, /


+(a::TrackingFloat, b::TrackingFloat) = TrackingFloat(a.value + b.value, maximum(abs.([a.tracked_value a.value b.tracked_value b.value])))

-(a::TrackingFloat, b::TrackingFloat) = TrackingFloat(a.value - b.value, maximum(abs.([a.tracked_value a.value b.tracked_value b.value])))

*(a::TrackingFloat, b::TrackingFloat) = TrackingFloat(a.value * b.value, maximum(abs.([a.tracked_value a.value b.tracked_value b.value])))

/(a::TrackingFloat, b::TrackingFloat) = TrackingFloat(a.value * 1/b.value, maximum(abs.([a.tracked_value a.value b.tracked_value 1/b.value])))


Base.promote_rule(::Type{TrackingFloat}, ::Type{<:Real})  = TrackingFloat
TrackingFloat(a::TrackingFloat) = a

import Base: sqrt, <, -

sqrt(a::TrackingFloat) = TrackingFloat(sqrt(a.value),a.tracked_value)
<(a::TrackingFloat, b::TrackingFloat) = <(a.value,  b.value) 
-(a::TrackingFloat) = TrackingFloat(-a.value , a.tracked_value)


end
