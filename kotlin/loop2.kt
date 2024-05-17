fun isPrime(num: Int): Boolean {
    if (num <= 1) return false
    for (i in 2..Math.sqrt(num.toDouble()).toInt()) {
        if (num % i == 0) return false
    }
    return true
}

fun main() {
    val start = 10
    val end = 50
    var number = start

    println("Prime numbers between $start and $end are:")
    while (number <= end) {
        if (isPrime(number)) {
            println(number)
        }
        number++
    }
}
