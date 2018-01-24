// Count the number of prime numbers less than a non-negative number, n.


/**
 * @param {number} n
 * @return {number}
 */
var isPrime = function(num) {
  if (num === 1) return false;
  let max = Math.ceil(Math.sqrt(num));
  let i = 2;
  while (i <= max) {
    let result = (num / i);
    // console.log(i, result);
    if (Math.floor(result) === result) return false;
    i += 1;
  }
  return true;
};

var countPrimes = function(n) {
  if (n === 1) return 0;
  let count = 0;
  for(let i = 0; i < n; i++) {
    if (isPrime(i)) count += 1;
  }
  return count; 
};

