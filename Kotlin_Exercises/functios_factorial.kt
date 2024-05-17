fun factorial(num : Int) : Int {
    if (num == 1 || num == 0) {
        return 1
    }
    else {
        return num * factorial(num - 1)
    }
} 
fun main() {
    val factOf = factorial(5)
    println(factOf)
}