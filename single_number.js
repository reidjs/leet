// Given an array of integers, every element appears twice except for one. Find that single one.

// Note:
// Your algorithm should have a linear runtime complexity. Could you implement it without using extra memory?
var singleNumber = function(nums) {
  let h = {};
  nums.forEach((num) => {
    if (h[num] !== undefined)
      h[num] += 1;
    else 
      h[num] = 0;
  });
  let result = null;
  Object.keys(h).forEach((key) => {
    if (h[key] == 0) result = key;
  });
  return result;
};

console.log(singleNumber([1,1,2]));