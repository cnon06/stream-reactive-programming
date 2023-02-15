import 'package:stream3/stream3.dart' as stream3;

Stream<int> getNumbers() async* {
  for (int i = 0; i < 5; i++) {
    yield i;
    await Future.delayed(Duration(seconds: 1));
  }
}

//reactive programming;
void main(List<String> arguments) {
  getNumbers().listen((event) {
    print(event);
  });
}
