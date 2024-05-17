fun main() {
    // Input the lengths of the sides of the triangle
    val side1 = 5.0
    val side2 = 5.0
    val side3 = 5.0

    // Determine the type of triangle based on the lengths of its sides
    val triangleType = when {
        side1 == side2 && side2 == side3 -> "Equilateral"
        side1 == side2 || side1 == side3 || side2 == side3 -> "Isosceles"
        else -> "Scalene"
    }

    // Print the type of triangle
    println("Triangle Type: $triangleType")
    
     // Input the number of hours worked and the hourly rate
    val hoursWorked = 45
    val hourlyRate = 20.0

    // Calculate the total salary, considering overtime
    val regularHours = if (hoursWorked <= 40) hoursWorked else 40
    val overtimeHours = if (hoursWorked > 40) hoursWorked - 40 else 0
    val regularPay = regularHours * hourlyRate
    val overtimePay = overtimeHours * (hourlyRate * 1.5)
    val totalSalary = regularPay + overtimePay

    // Print the total salary
    println("Total Salary: $$totalSalary")
    
     // Input the month and day
    val month = 3 // March
    val day = 21

    // Determine the season based on the month and day
    val season = when (month) {
        12, 1, 2 -> "Winter"
        3 -> if (day < 20) "Winter" else "Spring"
        4, 5 -> "Spring"
        6 -> if (day < 21) "Spring" else "Summer"
        7, 8 -> "Summer"
        9 -> if (day < 22) "Summer" else "Fall"
        10, 11 -> "Fall"
        else -> "Invalid month"
    }

    // Print the season
    println("Season: $season")
    
    // Input three different numbers
    val num1 = 15
    val num2 = 10
    val num3 = 20

    // Determine the largest number using nested conditionals
    val largest = if (num1 > num2) {
        if (num1 > num3) {
            num1
        } else {
            num3
        }
    } else {
        if (num2 > num3) {
            num2
        } else {
            num3
        }
    }

    // Print the largest number
    println("The largest number is: $largest")
}