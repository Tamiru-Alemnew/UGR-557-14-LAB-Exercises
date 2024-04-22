void throwError() {
  throw FormatException('Invalid format');
}

void main() {
  try {
    throwError();
  } on FormatException catch (e) {
    print('Caught a FormatException: $e');
  } catch (e) {
    print('Caught an exception: $e');
  }
}
