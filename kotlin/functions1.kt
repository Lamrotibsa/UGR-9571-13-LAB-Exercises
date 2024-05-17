fun sortArray(arr: IntArray): IntArray {
    return arr.sortedArray()
}

fun main() {
    val array = intArrayOf(5, 3, 8, 1, 2)
    val sortedArray = sortArray(array)
    println("Sorted array: ${sortedArray.joinToString(", ")}")
}
