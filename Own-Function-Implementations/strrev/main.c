#include <stdio.h>
#include <string.h>

char* own_strrev(char* str) {
    if (str == NULL) return NULL;

    int len = strlen(str);
    
    for (int i = 0; i < len / 2; i++) {
        char temp = str[i];
        str[i] = str[len - 1 - i];
        str[len - 1 - i] = temp;
    }

    return str;
}

int main() {

    char str[] = "Nihad";

    printf("%s\n", own_strrev(str));
    
    return 0;
}