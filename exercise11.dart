// Exercise 11--- Classes and Objects

void main() {
  Student bem = Student();
  bem.addMarks(10);
  bem.addMarks(10);
  bem.addMarks(10);
  bem.addMarks(10);
  bem.addMarks(10);
  bem.addMarks(10);


  print(bem.averageMark());
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

class Student extends Person {
  int? _rollNo;
  List<int>? _marks = [];

  void setRollNo(int newNo) {
    this._rollNo = newNo;
  }

  void addMarks(int newMark) {
    this._marks!.add(newMark);
  }

  int? getRollNo() {
    return this._rollNo;
  }

  List<int>? getMarks() {
    return this._marks;
  }

  double averageMark() {
    int total = 0;
    _marks?.forEach((mark) => total += mark);
    return total / (_marks?.length ?? 1);
  }
}
