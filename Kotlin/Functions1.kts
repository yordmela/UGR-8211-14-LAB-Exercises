fun analyzeString(input: String): Triple<Int, Int, Int> {
    val words = input.split("\\s+".toRegex()).size
    val uppercaseLetters = input.count { it.isUpperCase() } 
    val vowels = input.filter { it.toLowerCase() in "aeiou" }.length

    return Triple(words, uppercaseLetters, vowels)
}

fun main() {
    val inputString = "Hello World! "
    val (wordCount, uppercaseCount, vowelCount) = analyzeString(inputString)

    println("Input String: $inputString")
    println("Number of Words: $wordCount")
    println("Number of Uppercase Letters: $uppercaseCount")
    println("Number of Vowels: $vowelCount")
}
