fun main() {
    println("Enter a string:")
    val inputString = readLine() ?: ""

    if (inputString.isNotEmpty()) {
        var minChar = inputString[0]
        var maxChar = inputString[0]

        for (char in inputString) {
            if (char < minChar) {
                minChar = char
            }
            if (char > maxChar) {
                maxChar = char
            }
        }

        println("Minimum character: $minChar")
        println("Maximum character: $maxChar")
    } else {
        println("Input string is empty.")
    }
}
