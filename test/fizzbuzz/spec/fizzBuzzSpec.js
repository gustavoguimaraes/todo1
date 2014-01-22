describe( "#is_between", function() {
  it("should return \"fizz\" if n is multiple of 3", function() {
    expect(fizzbuzz(12)).toBe("Fizz");
  });

  it("should return n is n is NOT a multiple of 3 or 5", function(){
    expect(fizzbuzz(16)).toBe(16);
  });

});
