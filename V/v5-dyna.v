module main

import time

const max = 10000000


fn main() {
    
    // max := os.input("Enter the maximal number : ").int()
    start_time := time.now()

    mut numbers := []bool{len: max, init : true}
    mut primary_numbers := []int{}

    numbers[0] = false
    numbers[1] = false

    // print(numbers)

    for i := 3; i < max; i+=2 {

        // print(i)

        // println(i.str() + "wow")

        // println("currentnumber" + current_number.str())

        if numbers[i] == true{

        for a := 2; a * i < max; a++ {

            // println(a)
            // println(a*i)


            index_to_remove := i * a            

            if index_to_remove != 0 {
                // print("wow")
                numbers[index_to_remove] = false
            }
        }
        }

    }

    
        for b := 3; b < max; b = b + 2 {
            if numbers[b] == true{
                primary_numbers << b
            }
        }
 

    println("Finished!")
    // println("Found numbers : ${primary_numbers}.")
    println("Time elapsed : ${time.since(start_time)} for ${max} numbers")
}