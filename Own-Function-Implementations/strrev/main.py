def own_strrev(s: str) -> str:
    chars = list(s)
    length = len(chars)

    for i in range(length // 2):
        chars[i], chars[length - 1 - i] = chars[length - 1 - i], chars[i]

    
    return "".join(chars)


print(own_strrev("Nihad"))
