<?php

require '../vendor/autoload.php';

use Stringy\Stringy as S;

$string = "Hello, World!";

echo $string . PHP_EOL;
echo S::create($string)->toUpperCase() . PHP_EOL;
echo S::create($string)->toLowerCase() . PHP_EOL;

