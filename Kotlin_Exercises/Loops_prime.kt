fun main() {
    primeNumberInRange(3, 9)
}

fun primeNumberInRange(num1: Int, num2: Int) {
    for (i in num1..num2) {
        if (isPrime(i)) {
            println(i)
        }
    }
}

fun isPrime(num: Int): Boolean {
    if (num <= 1) return false
    var k = 2
    while (k < num) {
        if (num % k == 0){ 
            return false
            }
        k++
    }
    return true
}
