fun hasUniqueCharactersOnly(string: String): Boolean {
    val seenCharacters = mutableSetOf<Char>()

    for (c in string) {
        if (c in seenCharacters) {
            return false
        }
        seenCharacters.add(c)
    }
    return true
}

fun main() {
    val result = hasUniqueCharactersOnly("Bemnet")
    println(result) // Output: false
}
