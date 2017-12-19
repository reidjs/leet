// Determine whether an integer is a palindrome. Do this without extra space.

//4556 --> false
//121 --> true 
//23232 --> true

//approach
//0. if lt 0, return false 
//1. tostring
//2. loop through chars (2 pointers)
//3. if the two chars are ever different, return false 
//Works fine. 

const is_palindrome = function(x) {
  let str = x.toString();
  let j = str.length - 1;
  for (let i = 0; i < Math.floor(str.length/2); i++) {
    if (str[i] !== str[j]) {
      return false;
    }
    j--;
  }
  return true;
};

// console.log(is_palindrome(432));
// console.log(is_palindrome(232));
// console.log(is_palindrome(2132111));
// console.log(is_palindrome(1001));
