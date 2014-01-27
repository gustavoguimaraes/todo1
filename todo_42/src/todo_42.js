function evenNum(array) {
  var evens = [];
  for(i = 0; i < array.length; i++) {
    if(array[i] % 2 === 0) {
      evens.push(array[i])
    }

  }
  return evens[0];
}


