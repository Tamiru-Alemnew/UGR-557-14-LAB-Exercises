fun main() {
    println("Enter the first number:")
    val number1 = readLine()?.toDoubleOrNull() ?: return

    println("Enter the second number:")
    val number2 = readLine()?.toDoubleOrNull() ?: return

    println("Enter the operation (addition, subtraction, multiplication, division):")
    val operation = readLine()?.toLowerCase() ?: return
    
    val result = when (operation) {
        "addition" -> number1 + number2
        "subtraction" -> number1 - number2
        "multiplication" -> number1 * number2
        "division" -> if (number2 != 0.0) number1 / number2 else null
        else -> null
    }

    result?.let {
        println("Result of $operation: $it")
    }
}