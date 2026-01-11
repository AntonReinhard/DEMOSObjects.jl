module DEMOSObjects

using SimpleTraits: SimpleTraits, @traitdef, @traitfn, @traitimpl

include("distributions/traits.jl")
include("distributions/types.jl")
include("distributions/interface.jl")

end
