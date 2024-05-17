
fun sortArray(vararg list: Int) {
    val sortedList = list.toMutableList().apply { sort() }
    println(sortedList.joinToString())
}

fun main() {
    val myArray = intArrayOf(30, 20, 10)
    sortArray(*myArray)
}
