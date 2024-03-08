// Exercise-24 ---Collections (Lists, Sets, Maps)

void main() {
  // Create an empty map to store student names and their marks
  Map<String, int> studentMarks = {};

  // Add entries to the map using putIfAbsent method
  studentMarks.putIfAbsent('Alice', () => 90);
  studentMarks.putIfAbsent('Bob', () => 85);
  studentMarks.putIfAbsent('Charlie', () => 92);
  studentMarks.putIfAbsent('David', () => 88);

  // Iterate over the map using forEach method
  print('Student Marks:');
  studentMarks.forEach((student, mark) {
    print('$student: $mark');
  });

  // Check if a student name exists in the map using containsKey method
  String studentName = 'Alice';
  if (studentMarks.containsKey(studentName)) {
    print('$studentName is present in the map.');
  } else {
    print('$studentName is not present in the map.');
  }
}
