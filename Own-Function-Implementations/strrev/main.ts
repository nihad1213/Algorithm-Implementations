"use strict";

function ownStrrevTs(str: string): string {
    const chars: string[] = str.split('');
    const len: number = chars.length;

    for (let i = 0; i < Math.floor(len / 2); i++) {
        const left: string = chars[i];
        const right: string = chars[len - 1 - i];

        [chars[i], chars[len - 1 - i]] = [right, left];
    }

    return chars.join('');
}

console.log(ownStrrevTs("Nihad"));