"""
    struct UniformPdf{T,N} end

\$\\text{UniformPdf}(x, a, b) = {1\\over \\mathcal{M}} = {1 \\over b - a}\$
"""
struct UniformPdf{T<:Number,N}
    min::T
    max::T

    function UniformPdf(name::AbstractString, min::Number, max::Number)
        T = promote_type(typeof(min), typeof(max))
        return new{T,Symbol(name)}(min, max)
    end
end

type(::UniformPdf) = :uniform_pdf
name(::UniformPdf{T,N}) where {T,N} = string(N)
Base.eltype(::UniformPdf{T}) where {T} = T

"""
    struct ExponentialPdf{T,N} end

\$\\text{ExponentialPdf}(x, c) = {1\\over\\mathcal{M}} \\cdot e^{-c \\cdot x}\$
"""
struct ExponentialPdf{T<:Number,N}

end

name(::ExponentialPdf{T,N}) where {T,N} = string(N)
