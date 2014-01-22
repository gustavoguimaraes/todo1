function fizzbuzz(num){
  if (num % 15 == 0){
    return "Fizzbuzz";
  } else if (num %5 == 0) {
    return "Buzz";
  } else if (num %3 == 0) {
    return "Fizz";
  } else {
    return num;
  }
}

tertiary operation

function fizzBuzz(num){
(num % 15 == 0) ? console.log("fizzbuzz"):(num % 5 == 0) ? console.log("buzz") : (num % 3 == 0) ? console.log("fizz") : console.log(num)
}
