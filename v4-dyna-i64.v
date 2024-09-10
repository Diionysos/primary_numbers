module main

import os
import time

const max = i64(10000000000)


fn main() {
    
    // max := os.input("Enter the maximal number : ").int()
    start_time := time.now()

    mut numbers := []i64{len: i64(max), init : 0}
    mut primary_numbers := []i64{}

    // Add every number between 2 and max
    for i := 0; i < i64(max) ; i = i + 2  {
        
        numbers[i] = i
    }

    // print(numbers)
    numbers[1] = 0
    for current_number in numbers {
        // println("currentnumber" + current_number.str())

        if(current_number != 0){

        primary_numbers.insert(primary_numbers.len, current_number)

        for i := 1; i * current_number < i64(max); i++ {
            // print(current_number * i)
            // println(current_number * i < max)
            index_to_remove := numbers[current_number * i ]
            

            if index_to_remove != 0 {
                // println(index_to_remove)
                numbers[index_to_remove] = 0
            }
        }
        }
    }

    println("Finished!")
    // println("Found numbers : ${primary_numbers}.")
    println("Time elapsed : ${time.since(start_time)} for ${i64(max)} numbers")
}