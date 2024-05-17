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
    println("Enter month (1-12): ")
    val month = readLine()?.toIntOrNull() ?: return println("Invalid input")
    println("Enter day (1-31): ")
    val day = readLine()?.toIntOrNull() ?: return println("Invalid input")

    if (month !in 1..12 || day !in 1..31) {
        println("Invalid date")
        return
    }

    val season = determineSeason(month, day)
    println("The season is: $season")
}
