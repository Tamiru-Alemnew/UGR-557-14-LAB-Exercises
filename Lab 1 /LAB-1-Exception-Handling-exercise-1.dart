void throwError() {
  throw Exception('This is an exception.');
}

void main() {
  try {
    throwError();
  } catch (e) {
    print('Caught an exception: $e');
  }
}
