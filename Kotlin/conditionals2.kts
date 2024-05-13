fun main(args: Array<String>) {
    
    val original: Double= 55.0
    val discount_per: Double=0.5
    var finalprice: Double
    val threshold: Double=0.4
    
    
    if (discount_per> 0.4){
        finalprice = original * (1-discount_per)
        println(finalprice)
    }else{
        finalprice= original * (1- threshold)
        println(finalprice)
    }
    
    
    
    
}