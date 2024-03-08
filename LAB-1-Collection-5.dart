class Student {
  String name;
  List<int> marks;


  Student(this.name, this.marks);


  double calculateAverageMark() {
    if (marks.isEmpty) {
      return 0.0;
    } else {
      int sum = marks.reduce((value, element) => value + element);
      return sum / marks.length;
    }
  }
}

void main() {
 
  Student student1 = Student('Alice', [85, 90, 78, 92]);

  
  double averageMark = student1.calculateAverageMark();
  print('${student1.name}\'s average mark: $averageMark');
}
