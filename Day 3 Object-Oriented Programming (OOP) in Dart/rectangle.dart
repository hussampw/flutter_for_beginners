class Rectangle {
    double width;
    double height;

    String? _color;

    Rectangle(this.width, this.height);
    double get area => width * height;
    double get perimeter => 2 * (width + height);
    String? get color => _color;

     set color(String color) {
        _color = color;
    }
}