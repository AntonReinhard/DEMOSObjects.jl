"""
    IsDemosDistribution

Trait for julia wrapper objects of DEMOS standard distributions.

Each distribution has its required parameters as members and can be constructed from a NamedTuple of the parameters.

The trait requires these functions:
- `name(::IsDemosDistribution)::String` that returns its unique name.
- `type(::IsDemosDistribution)::Symbol` that returns its type, as defined by the standard, e.g. `:uniform_pdf`.
- `Base.eltype(::IsDemosDistribution)::Type` that returns the used fundamental number type, e.g. `Float32`.
"""
@traitdef IsDemosDistribution{X}

@traitimpl IsDemosDistribution{X} < -is_demos_distribution(X)
is_demos_distribution(X) = false # set default
