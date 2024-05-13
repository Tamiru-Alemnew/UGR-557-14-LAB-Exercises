fun main() {
    println("Enter the numeric grade (between 0 and 100):")
    val numericGrade = readLine()?.toIntOrNull()

    if (numericGrade != null && numericGrade in 0..100) {
        val letterGrade = when {
            numericGrade >= 90 -> "A"
            numericGrade in 80..89 -> "B"
            numericGrade in 70..79 -> "C"
            numericGrade in 60..69 -> "D"
            else -> "F"
        }
        println("Letter grade: $letterGrade")
    } else {
        println("Invalid input. Please enter a numeric grade between 0 and 100.")
    }
}
