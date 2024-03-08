class Rectangle {
  double width;
  double height;


  Rectangle(this.width, this.height);


  double calculateArea() {
    return width * height;
  }


  double calculatePerimeter() {
    return 2 * (width + height);
  }


  void displayInfo() {
    print('Width: $width');
    print('Height: $height');
    print('Area: ${calculateArea()}');
    print('Perimeter: ${calculatePerimeter()}');
  }
}

void main() {

  Rectangle rectangle1 = Rectangle(5.0, 8.0);


  rectangle1.displayInfo();
}