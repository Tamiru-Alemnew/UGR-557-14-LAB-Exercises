fun main() {
    val passwordLength = 8 
    val password = generateRandomPassword(passwordLength)
    println("Generated Password: $password")
}

fun generateRandomPassword(length: Int): String {
    val allowedChars = ('a'..'z') + ('A'..'Z') + ('0'..'9') + listOf('!', '@', '#', '$', '%', '^', '&', '*')
    val password = StringBuilder(length)

    repeat(length) {
        val randomIndex = (0 until allowedChars.size).random()
        password.append(allowedChars[randomIndex])
    }

    return password.toString()
}
