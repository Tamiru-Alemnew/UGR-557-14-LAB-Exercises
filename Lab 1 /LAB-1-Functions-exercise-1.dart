void main(){
  
  List<double> numbers = [1,2,3,4,5,6,7,8,9,10];

  double calculateAverage(List<double> numbers){
    double sum = 0;
    for (var number in numbers) {
      sum += number;
    }
    return sum/numbers.length;
  }

  print(calculateAverage(numbers));
}