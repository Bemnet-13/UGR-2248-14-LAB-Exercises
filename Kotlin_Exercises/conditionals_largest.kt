fun main() {
    val largest = largestNumber(1,2,3)
    println(largest)
}

fun largestNumber(num1 : Int, num2 : Int, num3 : Int) : Int {
    var max = when {
        num1 > num2 -> if (num1 > num3) num1 else num3
        else -> if (num2 > num3) num2 else num3
        }
    return max

}