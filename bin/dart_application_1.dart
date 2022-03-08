import 'dart:ffi';
import 'dart:io';

void shape1(int t, {int j = 1}) {
  int c = 1;
  int x, y, z;

  for (x = 1; x <= t; x++) {
    for (y = 1; y <= j; y++) {
      for (z = 1; z <= t - x; z++) {
        stdout.write(" ");
      }
      for (z = 1; z <= x * 2 - 1; z++) {
        stdout.write(c);
      }
      for (z = 1; z <= t - x; z++) {
        stdout.write(" ");
      }
    }
    c++;
    print("");
  }
  for (x = t - 1; x >= 1; x--) {
    for (y = j; y >= 1; y--) {
      for (z = 1; z <= t - x; z++) {
        stdout.write(" ");
      }
      for (z = 1; z <= x * 2 - 1; z++) {
        stdout.write(c);
      }
      for (z = 1; z <= t - x; z++) {
        stdout.write(" ");
      }
    }
    c++;
    print("");
  }
}

void shape2(int t, {int j = 1}) {
  int c = 1;
  int x, y, z;

  for (x = 1; x <= t; x++) {
    for (y = 1; y <= j; y++) {
      for (z = 1; z <= t - x; z++) {
        if (c >= t) {
          c = 1;
        }
        stdout.write(c);
        c++;
      }
      for (z = 1; z <= x * 2 - 1; z++) {
        stdout.write(" ");
      }
      for (z = 1; z <= t - x; z++) {
        if (c >= t) {
          c = 1;
        }
        stdout.write(c);
        c++;
      }
    }
    c++;
    print("");
  }
}

void main(List<String> arguments) {
  shape1(5);
  print("");
  shape2(4);
}
