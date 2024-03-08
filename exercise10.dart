// Exercise 10--- Classes and Objects

void main(){
  Person bem = Person();
  bem.setName('Bemnet');
  print(bem.getName());
}

class Person {
  String? _name;
  int? _age;
  String? _address;
  
  void setName(String newName) {
    this._name = newName;
  }

  void setAge(int newAge) {
    this._age = newAge;
  }

  void setAddress(String newAddress) {
    this._address = newAddress;
  }

  String? getName() {
    return this._name;
  }

  int? getAge() {
    return this._age;
  }

  String? getAddress() {
    return this._address;
  }
}
