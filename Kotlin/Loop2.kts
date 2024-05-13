fun main() {
    var passwordLength : Int
    println("Enter the length of the password:")
    passwordLength=  readln().toInt()
    val password = generatePassword(passwordLength)
    println("Generated Password: $password")
}

fun generatePassword(length: Int): String {
    val charPool = ('a'..'z') + ('A'..'Z') + ('0'..'9') + listOf('!', '@', '#', '$', '%', '^', '&', '*', '(', ')', '-', '_', '+', '=', '{', '}', '[', ']', '|', ':', ';', '<', '>', ',', '.', '?', '/')
    return (1..length)
        .map { kotlin.random.Random.nextInt(0, charPool.size) }
        .map(charPool::get)
        .joinToString("")
}
