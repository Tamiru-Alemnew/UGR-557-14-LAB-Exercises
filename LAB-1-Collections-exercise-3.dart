void main(){

  void removeDuplicates<E>(List<E> items) {
    List<E> uniqueItems = [];

    for (E item in items) {
      if (!uniqueItems.contains(item)) {
        uniqueItems.add(item);
      }
    }

    print(uniqueItems);
  }


 removeDuplicates([1, 2, 'a', 'a', 3, 4, 'b', 'b', 5]);
}