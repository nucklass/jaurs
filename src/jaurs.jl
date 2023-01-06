module jaurs

using Comonicon, HTTP, JSON3

"""
A simple command to search the Archlinux User Repository

# Args
- `searchword`: key term to use in search of aur

"""
@main function main(searchword)
    resp = HTTP.get("https://aur.archlinux.org/rpc/v5/search/$searchword")
    results = resp.body |>
        JSON3.read |>
        λ -> λ[:results] .|>
        λ -> λ["Name"]
    if isempty(results)
        println("No Results Found :'(")
    else
        results .|> λ -> println(λ)
end 
    return results
end 
end
