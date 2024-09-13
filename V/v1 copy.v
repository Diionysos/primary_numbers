//550ms

module main

import os
import time

fn main() {
    // max := os.input("Enter the maximal number : ").int()
	max := 10000
    start_time := time.now()

    mut numbers := []int{}
    mut primary_numbers := []int{}

    // Add every number between 2 and max
    for i in 2 .. (max + 1) {
        // numbers.insert(numbers.len, i)
        numbers << i
    }

    // Well I don't clearly understand that myself so good luck!
    for numbers.len > 0 {
        current_number := numbers.first()
        primary_numbers << current_number

        for i := 1; i * current_number <= max; i++ {
            
            index_to_remove := numbers.index(current_number * i)

            if index_to_remove >= 0 {
                numbers.delete(index_to_remove)
            }
        }
    }

    println("Finished!")
    // println("Found numbers : ${primary_numbers}.")
    println("Time elapsed ${time.since(start_time)}")
}