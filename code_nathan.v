module main

//import os
import time
import math

const max = 10000000

fn main() {
    //max := os.input("Enter the maximal number : ").u32()
    start_time := time.now()

    mut primary_numbers := [2]

    for current_number := 3; current_number <= max; current_number += 2 {
        ceil := u32(math.cbrt(current_number)) + 1

        mut is_primary := true

        for i := 1; i <= ceil; i++ {
            result := current_number / i

            if result != u32(result) {
                is_primary = false
                break
            }
        }

        if is_primary {
            primary_numbers << current_number
        }
    }

    println("Finished!")
    // println("Found numbers : ${primary_numbers}")
    println("Elapsed time : ${time.since(start_time)}")
}