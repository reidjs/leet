let memo = {};
function happy(num) {
  if (num === 1) return true;
  if (memo[num]) return false;
  return happy(numToSquareDigits(num));

}

function numToSquareDigits(num) {
  let digits = [];
  while (num > 9) {
    digits.push(num % 10);
    num = parseInt(num/10);
  }
  digits.push(num);
  console.log(digits);
  let sum = 0;
  digits.forEach(digit => {
    sum += digit*digit;
  });
  return sum;
}
console.log(numToSquareDigits(100));
console.log(happy(19));