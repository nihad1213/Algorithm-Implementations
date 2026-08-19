#include <iostream>
#include <string>
#include <utility>

std::string own_strrev(std::string str) {
    int len = str.length();

    for (int i = 0; i < len / 2; ++i) {
        std::swap(str[i], str[len - 1 - i]);
    }

    return str;
}

int main() {
    
    std::string str = "Nihad";

    std::cout << own_strrev(str) << std::endl;
    
    return 0;
}