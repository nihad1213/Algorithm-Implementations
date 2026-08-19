<?php

declare(strict_types=1);

function own_strrev(string $str): string
{
    $len = strlen($str);

    for ($i = 0; $i < (int)($len / 2); $i++) {
        $temp = $str[$i];
        
        $str[$i] = $str[$len - 1 - $i];
        $str[$len - 1 - $i] = $temp;
    }
    
    return $str;
}


echo own_strrev("Nihad");