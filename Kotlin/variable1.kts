fun main() {
    var a:Double
    println("enter number 1:")
    a=readln().toDouble()
 
    var b:Double
    println("enter number 2 :")
    b=readln().toDouble()
 
    var op:String
    println("enter opertaion")
    op=readln()
    
    if (op == "+"){
        println( "sum of $a and $b is ${a + b}")
    }else if (op == "-"){
        println( "difference of $a and $b is ${a - b}")
    }else if (op == "*"){
     println( "product of $a and $b is ${a * b}")
 }else if (op=="/"){
     
     println( "Quotient of $a and $b is ${a / b}")
        
 }else{
        println("invalid operation.")
    }
}
