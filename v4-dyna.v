module main

import os
import time

const max = 100000000


fn main() {
    
    // max := os.input("Enter the maximal number : ").int()
    start_time := time.now()

    mut numbers := []int{len: max, init : 0}
    mut primary_numbers := []int{}

    // Add every number between 2 and max

    numbers[2] = 2
    for i := 3; i < max ; i = i + 2  {
        
        numbers[i] = i
    }
    // print(numbers)


    // print(numbers)
    numbers[1] = 0
    // print(numbers)

    for current_number in numbers {

        // print(current_number)
        // break

        // println("currentnumber" + current_number.str())
        if(current_number != 0){
        // print("egal a 0")
        primary_numbers.insert(primary_numbers.len, current_number)

        for i := 3; i * current_number < max; i++ {

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
    println("Time elapsed : ${time.since(start_time)} for ${max} numbers")
}