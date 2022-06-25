import 'package:hw_01/hw_01.dart' as hw_01;

void main() {
  // var ali = 18;
  // var advice =
  //     ali < 20 ? "don\'t smoke! you are just ${ali}" : "you are old enough!";
  // print(advice);

  var numbers = [1, 2, 3, 4, 5, 6, 7, 8];

  for (var i in numbers) {
    if (i % 2 != 0) {
      print(i);
    }
  }
}
