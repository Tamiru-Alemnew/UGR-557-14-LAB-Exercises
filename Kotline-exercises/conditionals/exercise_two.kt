fun main() {
    val originalPrice = 100.0
    val discountPercentage = 0.6

    val discountThreshold = 0.5

    val finalPrice: Double
    val finalDiscountPercentage: Double

    if (discountPercentage > discountThreshold) {
        println("Warning: The discount percentage is too high!")
        finalDiscountPercentage = discountThreshold
        finalPrice = originalPrice * (1 - finalDiscountPercentage)
    } else {
        finalDiscountPercentage = discountPercentage
        finalPrice = originalPrice * (1 - finalDiscountPercentage)
    }

    println("Original Price: $$originalPrice")
    println("Discount Percentage: ${(finalDiscountPercentage * 100).toInt()}%")
    println("Final Price: $$finalPrice")
}
