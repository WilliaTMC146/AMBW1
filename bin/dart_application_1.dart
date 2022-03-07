import 'dart:io';

void shape1(int n) {
  int c = 1;
  for (int i = 0; i < n; i++) {
    for (int j = 0; j < n; j++) {
      if (j == j / 2) {
        stdout.write(c);
      }
    }
  }
}

void shape2() {}
void main(List<String> arguments) {
  //shape1(5);
  stdout.write("clara clarissa");
}
