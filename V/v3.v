module main

import os
import time

const max = 50000


fn main() {
    // max := os.input("Enter the maximal number : ").int()
    start_time := time.now()

    mut numbers := []int{}
    mut primary_numbers := []int{}

    // Add every number between 2 and max
    for i := 2; i <= max; i = i + 2  {
        numbers.insert(numbers.len, i)
    }

    // Well I don't clearly understand that myself so good luck!
    for current_number in numbers {

        if(current_number != 0){

        // primary_numbers.insert(primary_numbers.len, current_number)

        for i := 2; i * current_number <= max; i++ {
            
            index_to_remove := numbers.index(current_number * i)

            if index_to_remove != 0 {
                numbers[index_to_remove] = 0
            }
        }
        }
    }

    println("Finished!")
    // println("Found numbers : ${primary_numbers}.")
    println("Time elapsed ${time.since(start_time)}")
}