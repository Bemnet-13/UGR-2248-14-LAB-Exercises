// Exercise-26 ---Collections (Lists, Sets, Maps)

class Student {
  String name;
  List<int> marks;

  // Constructor
  Student(this.name, this.marks);

  // Method to calculate the average mark
  double calculateAverageMark() {
    if (marks.isEmpty) {
      return 0.0; // Return 0 if the marks list is empty
    } else {
      int totalMarks = marks.reduce((value, element) => value + element);
      return totalMarks / marks.length;
    }
  }
}

void main() {
  // Create a student object
  Student student1 = Student('John', [80, 75, 90, 85, 95]);

  // Calculate and print the average mark of the student
  double averageMark = student1.calculateAverageMark();
  print('${student1.name}\'s Average Mark: $averageMark');
}
