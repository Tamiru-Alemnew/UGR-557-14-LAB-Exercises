void main(){

  List<int> numbers = [1,2,3,4,20,5,6,7,8,9,10];

  int highestNumber(List<int> numbers){
    int highest = numbers[0];
    for (var number in numbers) {
      if (number > highest) {
        highest = number;
      }
    }
    return highest;
  }
   print(highestNumber(numbers));
}