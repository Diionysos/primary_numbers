module main

import time

const max = 10000000


fn main() {
    
    start_time := time.now()

    mut numbers := []bool{len: max, init : true}
    mut primary_numbers := []int{cap : max}

    // tous les nombre a partire de 3 (sauf multiple de 2 (gain de environ 20%))
    for i := 3; i < max; i+=2 { // 

        // tous les nombre on été générer avec true de base, et on met false quand se sons des mutliple, donc si le nombre est true il est premier
        if numbers[i] == true{

            //ajout a la list
            primary_numbers << i // 20-15ms


        // //fonction qui met false au multiples
        // for a := 2; a * i < max; a++ { // 
        //     // println(a*i)

        //     numbers[a*i] = false // 60ms

        // }
    // methode test qui devrais etre plus rapide... logiquement

       for a := i; a < max; a+=i {
            // println(a)
            numbers[a] = false

        }
        
        
        }
    }
 

    println("Finished!")
    // println("Found numbers : ${primary_numbers}.")
    println("Time elapsed : ${time.since(start_time)} for ${max} numbers")
} 