module main

import os
import time

const max = 2000000


fn main() {
    // max := os.input("Enter the maximal number : ").int()
    start_time := time.now()

    mut numbers := [max]i64{}
    mut primary_numbers := []i64{}

    // Add every number between 2 and max
    for i := 0; i < max ; i = i + 2  {
        
        numbers[i] = i64(i)
    }

    // print(numbers)
    numbers[1] = 0
    for current_number in numbers {
        // println("currentnumber" + current_number.str())

        if(current_number != 0){

        primary_numbers.insert(primary_numbers.len, i64(current_number))

        for i := 1; i64(i) * i64(current_number) < max; i++ {
            // print(current_number * i)
            // println(current_number * i < max)
            index_to_remove := numbers[i64(current_number) * i64(i) ]
            

            if index_to_remove != 0 {
                // println(index_to_remove)
                numbers[index_to_remove] = 0
            }
        }
        }
    }

    println("Finished!")
    // println("Found numbers : ${primary_numbers}.")
    println("Time elapsed ${time.since(start_time)}")
}