function fizzBuzz(n) {
  if(n % 15 == 0) {
    return "fizzbuzz";
  } else if(n% 3 == 0) {
    return "fizz";
  } else if(n % 5 == 0) {
    return "buzz";
  } else {
    return n;
  }
}

for(var i = 1; i < 101; i++) {
   console.log(fizzBuzz(i));
}