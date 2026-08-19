function own_strrev(str)
    local reversed = ""
    local len = #str

    for i = len, 1, -1 do
        reversed = reversed .. string.sub(str, i, i)
    end

    return reversed
end

print(own_strrev("Nihad"))