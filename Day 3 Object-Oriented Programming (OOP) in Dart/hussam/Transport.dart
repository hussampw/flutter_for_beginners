abstract class Transport {
double speed;
Transport(this.speed);
}
mixin Gps {
  String showLocation(String city) {
    return "Current location is in $city.";
  }
}