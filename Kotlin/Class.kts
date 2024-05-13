import java.util.Scanner

class BankAccount(val accountNumber: String, var balance: Double) {
    fun deposit(amount: Double) {
        if (amount > 0) {
            balance += amount
            println("Deposited $amount. New balance: $balance")
        } else {
            println("Invalid deposit amount.")
        }
    }

    fun withdraw(amount: Double) {
        if (amount > 0) {
            if (balance >= amount) {
                balance -= amount
                println("Withdrawn $amount. New balance: $balance")
            } else {
                println("Insufficient funds. Cannot withdraw.")
            }
        } else {
            println("Invalid withdrawal amount.")
        }
    }

    fun printBalance() {
        println("Current balance: $balance")
    }
}

fun main() {
    val scanner = Scanner(System.`in`)

    println("Enter account number:")
    val accountNumber = scanner.nextLine()

    println("Enter initial balance:")
    val balance = scanner.nextDouble()

    val account = BankAccount(accountNumber, balance)
    account.printBalance()

    println("Enter deposit amount:")
    val depositAmount = scanner.nextDouble()
    account.deposit(depositAmount)

    println("Enter withdrawal amount:")
    val withdrawAmount = scanner.nextDouble()
    account.withdraw(withdrawAmount)

    account.printBalance()

    scanner.close()
}
