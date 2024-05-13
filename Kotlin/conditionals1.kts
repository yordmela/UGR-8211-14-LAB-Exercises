fun main(args: Array<String>) {
    
    val marks: Int= 99
    if (marks in 90..100){
        println ("A")
    }
    else if (marks in 80..89){
        println ("B")
    } else if (marks in 70..79){
        println("C")
    }else if(marks in 60..69){
        println ("D")
    }else{
        println("F")
    }
}