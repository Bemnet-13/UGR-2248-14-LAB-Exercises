fun main() {
    val result = salaryCalculator(10.0,10.0,10.0)
    println(result)
}
fun salaryCalculator(hourlyRate : Double, hoursWorked : Double , overtime : Double ) : Double{
    val overtimeRate = 30
    var salary : Double = if (overtime > 0) {
        hourlyRate * hoursWorked + overtime * overtimeRate
    }
    else {
        hourlyRate * hoursWorked
    }
    return salary
}
