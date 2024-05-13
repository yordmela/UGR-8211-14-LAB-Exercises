fun main() {
    var distance : Double
    println("enter the distance:")
    distance = readln().toDouble()
 
    var unit : String
    println("enter the unit:km,m")
    unit = readln()
    
    var changeTo : String
    println("change to:km,m")
    changeTo = readln()
    
    if (changeTo == "m"){
        if (unit== "m"){
            print("result :$distance")
        }else{
            print("result :${1000*distance}")
        }
    }else if (changeTo == "km"){
        if (unit== "km"){
            print("result :$distance")
        }else{
            print("result :${distance/1000}")
        }
    }
        
    }
