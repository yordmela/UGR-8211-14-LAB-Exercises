class Person {
  String name;
  int age;
  String address;


  Person(this.name, this.age, this.address);


  void displayInfo() {
    print('Name: $name');
    print('Age: $age');
    print('Address: $address');
  }
}

class Student extends Person {
  int rollNumber;
  List<int> marks;


  Student(String name, int age, String address, this.rollNumber, this.marks)
      : super(name, age, address);


  int calculateTotalMarks() {
    return marks.reduce((value, element) => value + element);
  }


  double calculateAverageMarks() {
    if (marks.isEmpty) {
      return 0.0;
    }
    return calculateTotalMarks() / marks.length;
  }


  void displayStudentInfo() {
    displayInfo();
    print('Roll Number: $rollNumber');
    print('Marks: $marks');
    print('Total Marks: ${calculateTotalMarks()}');
    print('Average Marks: ${calculateAverageMarks()}');
  }
}

void main() {

  Student student1 = Student('Yordanos Melaku', 20, 'Birchko', 101, [90, 85, 92, 88, 95]);


  student1.displayStudentInfo();
}