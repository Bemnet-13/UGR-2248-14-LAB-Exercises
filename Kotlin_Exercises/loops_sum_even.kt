fun main() {
    var sumEven = 0
    for (i in 1..50) {
        if (i % 2 == 0){
            sumEven += i
        }
    }
    println(sumEven)
}