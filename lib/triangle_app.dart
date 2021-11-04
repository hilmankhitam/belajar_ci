String detectTriangle(num sideA, num sideB, num sideC) {
  final sides = [sideA, sideB, sideC];
  sides.sort();

  for (var side in sides) {
    if (side < 1) {
      throw Exception();
    }
  }

  if (sides[0] + sides[1] <= sides[2]) {
    throw Exception('Inqual Triangle');
  }

  if (sides[0] == sides[1] && sides[0] == sides[2]) {
    return "Segitiga sama sisi";
  }

  if (sides[0] == sides[1] || sides[1] == sides[2]) {
    return "Segitiga sama kaki";
  }

  return "Segitiga sembarang";
}
