fun analyzeString(input: String): Triple<Int, Int, Int> {
    val words = input.split(" ", "\n", "\r", "\t").filter { it.isNotEmpty() }
    val uppercaseLetters = input.count { it.isUpperCase() }
    val vowels = input.count { it.toLowerCase() in "aeiou" }

    return Triple(words.size, uppercaseLetters, vowels)
}