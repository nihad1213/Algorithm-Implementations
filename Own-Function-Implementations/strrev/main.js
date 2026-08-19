"use strict";

function ownStrrev(str) {
    if (typeof str !== 'string') return '';

    const chars = str.split('');
    const len = chars.length;

    for (let i = 0; i < Math.floor(len / 2); i++) {
        [chars[i], chars[len - 1 - i]] = [chars[len - 1 - i], chars[i]];
    }

    return chars.join("");
}

console.log(ownStrrev("Nihad"));
