def own_strrev(str)
    result = str.dup
    len = result.length

    (len / 2).times do |i|
        result[i], result[len - 1 - i] = result[len - 1 - i], result[i]
    end

    result
end

puts own_strrev("Nihad")