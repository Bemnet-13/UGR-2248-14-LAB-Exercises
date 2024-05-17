class Triangle( val side1 : Int, val side2 : Int, val side3: Int) {

    fun triangleType() : String {

    
    val answer = when {
        ((side1 == side2) && (side2 == side3)) -> "Equilateral"
        ((side1 == side2) || (side2 == side3) || (side1 == side3)) -> "Isosceles"
        else -> "Scalene"
    } 
    return "The triangle is $answer"
}
}

fun main() {
    val tri = Triangle(1,2,3)
    println(tri.triangleType())
}