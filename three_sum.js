//Current solution is brute force will never reach time optimized answer
// Given an array S of n integers, are there elements a, b,
//  c in S such that a + b + c = 0? Find all unique triplets in 
//  the array which gives the sum of zero.
//unique answers only (no dupes)
var threeSum = function(nums) {
  let results = [];
  for(let i = 0; i < nums.length - 2; i++) {
    for (let j = i+1; j < nums.length - 1; j++) {
      for (let k = j+1; k < nums.length; k++) {
        if (nums[i] + nums[j] + nums[k] === 0) {
          results.push([nums[i], nums[j], nums[k]]);
        }
      }
    }
  }
  return results.unique();
};

Array.prototype.unique = function() {
  let store = {}; //put sorted triplet into store for lookup 
  let result = [];
  for(let i = 0; i < this.length; i++) {
    if (store[this[i].sort()] === undefined) {
      store[this[i].sort()] = true;
      result.push(this[i]);
    }
    // result.push(this[i]);
  }
  return result;
};

console.log(threeSum([5,-2, -3, 6, 9]));