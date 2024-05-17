fun hasUniqueCharacters(str: String): Boolean {
    val charSet = mutableSetOf<Char>()
    for (char in str) {
        if (char in charSet) {
            return false
        }
        charSet.add(char)
    }
    return true
}

fun main() {
    val testString = "hello"
    val result = hasUniqueCharacters(testString)
    println("Does \"$testString\" have all unique characters? $result")
}
