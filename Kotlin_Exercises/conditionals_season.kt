fun determineSeason(month: Int, day: Int): String {
    return when (month) {
        1 -> "Winter"
        2 -> "Winter"
        3 -> if (day < 20) "Winter" else "Spring"
        4 -> "Spring"
        5 -> "Spring"
        6 -> if (day < 21) "Spring" else "Summer"
        7 -> "Summer"
        8 -> "Summer"
        9 -> if (day < 23) "Summer" else "Fall"
        10 -> "Fall"
        11 -> "Fall"
        12 -> if (day < 21) "Fall" else "Winter"
        else -> "Invalid month"
    }
}

fun main() {
    val season = determineSeason(10, 2)
    println("The season is: $season")
}
