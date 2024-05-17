import java.time.LocalDateTime
import java.time.format.DateTimeFormatter

fun main() {
    // Declare a variable currentTime of type String and assign it a value representing the current time
    val currentTime: String = LocalDateTime.now().format(DateTimeFormatter.ofPattern("HH:mm:ss"))

    // Declare a variable temperature and assign a value of type Double representing the current temperature
    val temperature: Double = 25.5 // Example temperature value, you can replace it with the actual temperature

    // Declare a variable grade and assign it a Char representing a student's grade (e.g., 'A', 'B', 'C', etc.)
    val grade: Char = 'A' // Example grade value, you can replace it with the actual grade

    // Print the values of the variables
    println("Current Time: $currentTime")
    println("Temperature: $temperature")
    println("Grade: $grade")
}