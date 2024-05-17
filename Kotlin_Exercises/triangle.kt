fun triangle(side1: Double, side2 : Double, side3 : Double) {

    
    val answer = when {
        ((side1 == side2) && (side2 == side3)) -> "Equilateral"
        ((side1 == side2) || (side2 == side3) || (side1 == side3)) -> "Isosceles"
        else -> "Scalene"
    } 
    println("The triangle is $answer")
}

fun main() {
triangle(2.0,2.0,3.0)
}