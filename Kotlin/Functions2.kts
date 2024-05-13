fun findMax(numbers: List<Int>): Int {
    require(numbers.isNotEmpty()) { "List cannot be empty" }
    var max = Int.MIN_VALUE
    for (num in numbers) {
        if (num > max) {
            max = num
        }
    }
    return max
}

fun filterEvenNumbers(numbers: List<Int>): List<Int> {
    return numbers.filter { it % 2 == 0 }
}

fun calculateAverage(numbers: List<Double>): Double {
    require(numbers.isNotEmpty()) { "List cannot be empty" }
    var sum = 0.0
    for (num in numbers) {
        sum += num
    }
    return sum / numbers.size
}

fun main() {

    val integers = listOf(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)
    val doubles = listOf(1.5, 2.5, 3.5, 4.5, 5.5)

    println("Maximum value in the list: ${findMax(integers)}")
    println("Even numbers in the list: ${filterEvenNumbers(integers)}")
    println("Average of elements in the list: ${calculateAverage(doubles)}")
}
