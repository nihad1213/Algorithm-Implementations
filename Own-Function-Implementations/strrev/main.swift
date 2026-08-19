import Foundation

func ownStrrev(_ str: String) -> String {
    var reversed = ""
    
    for char in str.reversed() {
        reversed.append(char)
    }
    
    return reversed
}

print(ownStrrev("Nihad"))