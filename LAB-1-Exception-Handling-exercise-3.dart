void main() {
  try {
    print('Executing some code...');
    throw Exception('Something went wrong!');
  } catch (e) {
    print('Caught an exception: $e');
  } finally {
    print('This code always runs.');
  }
}
