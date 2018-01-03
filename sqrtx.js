// Implement int sqrt(int x).

// Compute and return the square root of x.

// x is guaranteed to be a non-negative integer.

// truncate decimal 
// Example 1:

// Input: 4
// Output: 2
/**
 * @param {number} x
 * @return {number}
 */

var mySqrt = function(x) {
  // console.log('get', x);
  for (let i = 0; i <= x; i++) {
    // console.log(i);
    if (i * i == x)
      return i;
    if (i * i > x)
      return i - 1;
      // console.log('sqrt:',i);
    // return i; 
  }
  // console.log("couldn't find root");
};

console.log(mySqrt(4), mySqrt(8), mySqrt(9), mySqrt(10))


// process.argv.forEach(function (val, index, array) {
//   console.log(val);
//   console.log(mySqrt(val));
// });
