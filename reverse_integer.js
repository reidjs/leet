// Given a 32-bit signed integer, reverse digits of an integer.

// Example 1:

// Input: 123
// Output:  321
// Example 2:

// Input: -123
// Output: -321
// Example 3:

// Input: 120
// Output: 21
// Note:
// Assume we are dealing with an environment which could only hold integers within the 32-bit 
// signed integer range. For the purpose of this problem, assume that your function returns 
// 0 when the reversed integer overflows.
//check for sign  
const reverseDigits = function(x) {
  if (x > 2147483647 || x < -2147483647)
    return 0;
  let digits = [];
  let negative = false;
  if (x < 0) {
    negative = true;
    x *= -1;
  }
  while(x > 9) {
    digits.push(x % 10);
    x = Math.floor(x/10);
    // console.log(x, digits);
  }
  digits.push(x);
  // console.log(digits)
  if (negative)
    return Number(digits.join(""))*-1;
  else 
    return Number(digits.join(""));
};
reverseDigits(290);

