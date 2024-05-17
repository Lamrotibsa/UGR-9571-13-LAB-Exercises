class Triangle(val side1: Double, val side2: Double, val side3: Double) {

    fun isEquilateral(): Boolean {
        return side1 == side2 && side2 == side3
    }

    fun isIsosceles(): Boolean {
        return side1 == side2 || side1 == side3 || side2 == side3
    }

    fun isScalene(): Boolean {
        return side1 != side2 && side1 != side3 && side2 != side3
    }

    fun type(): String {
        return when {
            isEquilateral() -> "Equilateral"
            isIsosceles() -> "Isosceles"
            isScalene() -> "Scalene"
            else -> "Unknown"
        }
    }
}

fun main() {
    val triangle = Triangle(3.0, 3.0, 3.0)
    println("Triangle sides: ${triangle.side1}, ${triangle.side2}, ${triangle.side3}")
    println("Triangle type: ${triangle.type()}")
}
