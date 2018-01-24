let memo = {};
function happy(num) {
  if (num === 1) return true;
  if (memo[num]) return false;
  let newSum = happy(numToSquareDigits(num));
  return happy(newSum);
}

function numToSquareDigits(num) {
  let digits = [];
  while (num > 9) {
    digits.push(num % 10);
    num = parseInt(num/10);
  }
  digits.push(num);
  // console.log(digits);
  let sum = 0;
  // digits.forEach((digit) => {
  //   console.log(digit)
  //   sum += digit*digit;
  // });
  for(let i = 0; i < digits.length; i++) {
    sum += digits[i]*digits[i];
  }
  return sum;
}
console.log(numToSquareDigits(100));
console.log(happy(2));