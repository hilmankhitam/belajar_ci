import 'package:flutter_test/flutter_test.dart';
import 'package:triangle_app_test/triangle_app.dart';

void main() {
  group('Detect the triangle', () {
    test('Should throw Error when there is side less than 1', () {
      expect(() => detectTriangle(-1, 2, 2), throwsA(isA<Exception>()));
      expect(() => detectTriangle(1, -2, 2), throwsA(isA<Exception>()));
      expect(() => detectTriangle(1, 2, -2), throwsA(isA<Exception>()));
    });
    test('Should throw Error when side a + b <= c', () {
      expect(() => detectTriangle(4, 1, 2), throwsA(isA<Exception>()));
      expect(() => detectTriangle(5, 1, 3), throwsA(isA<Exception>()));
    });

    test('Should return "Segitiga sama sisi" when all sides are equal', () {
      expect(detectTriangle(1, 1, 1), "Segitiga sama sisi");
      expect(detectTriangle(2, 2, 1), isNot("Segitiga sama sisi"));
    });
    test('Should return "Segitiga sama kaki" when only two sides are equal',
        () {
      expect(detectTriangle(2, 2, 3), "Segitiga sama kaki");
      expect(detectTriangle(4, 2, 4), "Segitiga sama kaki");
      expect(detectTriangle(1, 2, 2), "Segitiga sama kaki");
      expect(detectTriangle(4, 1, 4), "Segitiga sama kaki");
    });

    test('Should return "Segitiga sembarang" when no sides are equal', () {
      expect(detectTriangle(2, 4, 3), "Segitiga sembarang");
    });
  });
}
