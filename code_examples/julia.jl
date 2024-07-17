"""
    coerse_string_type(v::Vector{<:AbstractString}) :: Union{String, Vector{String}}

Automatically unpack the return value of a generator function into a single string,
when appropriate.

# Parameters
- `v::Vector{<:AbstractString}`: value(s) returned by some generator function.

# Example
```repl
julia> Impostor.coerse_string_type(["Mark"])
"Mark"

julia> Impostor.coerse_string_type(["Mark", "Jane"])
2-element Vector{String}:
 "Mark"
 "Jane"
```
"""
@inline function coerse_string_type(v::Vector{<:AbstractString}) :: Union{String, Vector{String}}
    strings = v isa Vector{String} ? v : convert.(String, v)
    return length(strings) == 1 ? only(strings) : strings
end



"""
    get_all_locales(; root::AbstractString) :: Vector{String}

Retrieve a list of all unique available locale codes (inclusing the "noloc" locale)
available in all providers.
"""
function get_all_locales(;
    root::AbstractString = pkgdir(Impostor, "src", "data"),
    to_skip::Vector{String} = ["HEADER", "noloc"]
) :: Vector{String}
    unique_locales = Set{String}()
    for (_, _, files) in walkdir(root)
        for filename in files
            locale = first(split(filename, '.'))
            !(locale in to_skip) && push!(unique_locales, locale)
        end
    end
    return collect(unique_locales)
 end



"""
    render_alphanumeric(template::AbstractString; numbers, letters) :: String

Receive an alphanumeric template string (e.g. `"^^^-####"`) and generate a string replacing:
- `'#'` chars by random numbers between [0, 9].
- `'^'` chars by random uppercase letters between A-Z.
- `'_'` chars by random lowercase letters between a-z.
- `'='` chars by random uppercase or lowercase letters between a-z|A-Z.

Optionally, provide `numbers` to fill the `'#'` placeholders in `template`; or `letters` to fill
`'^'`,`'_'` or `'='` placeholders. Note that if the length of `letters` or `numbers` is smaller
than the number of placeholders in each category, the remaining placeholders will be randomly
filled according to the character in `template`.

# Examples
```@repl
julia> render_alphanumeric("####")
"6273"

julia> render_alphanumeric("123-####-AAA")
"123-5509-AAA"

julia> render_alphanumeric("__-^^-==-ZZZ123")
"vw-CX-fA-ZZZ123"

julia> render_alphanumeric("__-^^-==-ZZZ###"; numbers = "12345")
"qu-RT-St-ZZZ123"

julia> render_alphanumeric("__-^^-==-ZZZ###"; letters = "AABBCCDD")
"AA-BB-CC-ZZZ427"

julia> render_alphanumeric("__-^^-==-ZZZ###"; letters = "AABBCCDD", numbers = "12345")
"AA-BB-CC-ZZZ123"

julia> render_alphanumeric("_______"; letters = "abc")
"abcomhd"
```
"""
function render_alphanumeric(template::AbstractString; numbers = nothing, letters = nothing) :: String
    rendered = ""
    numbers = isnothing(numbers) ? String[] : collect(numbers)
    letters = isnothing(letters) ? String[] : collect(letters)

    for char in template
        rendered *= if char == '#'  # number
            !isempty(numbers) ? popfirst!(numbers) : string(rand(0:9))
        elseif char == '^' # uppercase letters
            !isempty(letters) ? popfirst!(letters) : rand('A':'Z')
        elseif char == '_' # lowercase letter
            !isempty(letters) ? popfirst!(letters) : rand('a':'z')
        elseif char == '=' # lowercase or uppercase letter
            !isempty(letters) ? popfirst!(letters) : rand(filter(isletter, collect('A':'z')))
        else
            char
        end
    end
    return rendered
end

