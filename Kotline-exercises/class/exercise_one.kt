class BankAccount(val accountNumber: String, var balance: Double) {

    fun deposit(amount: Double) {
        if (amount > 0) {
            balance += amount
            println("Deposit of $$amount successful. New balance: $$balance")
        } else {
            println("Invalid deposit amount. Amount must be greater than zero.")
        }
    }

    fun withdraw(amount: Double) {
        if (amount > 0) {
            if (balance >= amount) {
                balance -= amount
                println("Withdrawal of $$amount successful. New balance: $$balance")
            } else {
                println("Insufficient funds. Withdrawal failed.")
            }
        } else {
            println("Invalid withdrawal amount. Amount must be greater than zero.")
        }
    }

    fun printBalance() {
        println("Current balance: $$balance")
    }
}