void main() {
  // Sample map
  Map<String, int> sampleMap = {
    'one': 1,
    'two': 2,
    'three': 3,
    'four': 4,
  };

  void printMap(Map map) {
    map.forEach((key, value) {
      print('Key: $key, Value: $value');
    });
  }

  printMap(sampleMap);
}
