void main() {
  List<int> numbers = [10, 5, 7, 1, 2, 9, 4, 3, 6, 8];

  List<int> max = [];
  for (var i = 0; i < 3; i++) {  
    var x = -1;
    for (var j = 0; j < numbers.length; j++) {
      if (!max.contains(numbers[j]) && numbers[j] > x) {
        x = numbers[j];
      }
    }
    max.add(x);
  }
  print(max[2]);  

  var res = numbers.where((x) => x > 4);
  print(res);

  var sum = 0;
  var x = -1, j = -1;
  
  for(var i = 0;i < numbers.length;i++){
    if(numbers[i] % 2 != 0 && x < numbers[i]){
      x = numbers[i];
      j = i;
    }
    sum += numbers[i];
  }
  numbers[j] = sum;
  print(numbers);
}
