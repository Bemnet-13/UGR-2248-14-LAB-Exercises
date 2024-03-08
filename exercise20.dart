// Exercise-20---Error Handling (try/catch)

double divideNumbers(double dividend, double divisor) {
  try {
    if (divisor == 0) {
      throw UnsupportedError('Division by zero is not allowed.'); 
    }
    return dividend / divisor;
  } catch (e) {
    print('Error: $e');
    return double.nan; // Return NaN (Not a Number) as a result
  }
}

void main() {
  double a = 10;
  double b = 0;
  
  double result = divideNumbers(a, b);
  if (!result.isNaN) {
    print('Result: $result');
  }
}
