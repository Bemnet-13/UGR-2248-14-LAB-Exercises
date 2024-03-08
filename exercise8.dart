// Exercise - 8 -- Functions
void main() {
  bool result = isPrime(7);
  if (result == true){
  print("The number is prime"); 
  }
  else{
  print("The number is not prime"); 
  }
}
bool isPrime(int num) {
  for (int i = 2; i <= num - 1; i++) {
    if (num % i == 0) {
      return false;
    }
  }
  return true;
}
