def main [] {}

def "main run" [] {
    let input = open "../input/day1.txt"
    part1 $input
}

def "main test" [] {
    let input = "3   4
4   3
2   5
1   3
3   9
3   3"

    use std assert
    assert ((part1 $input) == 1)
}

def part1 [input] {
    $input | split row "\n" | split column "   " | transpose | print
    1
}
