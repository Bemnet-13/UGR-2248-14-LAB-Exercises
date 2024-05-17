class Rectangle(val width : Int, val height : Int) {
    fun getArea() : Int {
        return width * height
    }
    fun getPerimeter() : Int {
        return 2 * (width + height)
    }
}

fun main() {
    val rectangle = Rectangle(5, 3)
    println("Area: ${rectangle.getArea()}")         // Output: Area: 15
    println("Perimeter: ${rectangle.getPerimeter()}") // Output: Perimeter: 16
}