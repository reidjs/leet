// Given an array and a value, remove all instances of that value in-place and return the new length.

// Do not allocate extra space for another array, you must do this by modifyin
// g the input array in-place with O(1) extra memory.

// The order of elements can be changed. It doesn't matter what you leave beyond the new length.

var removeElement = function(nums, val) {
  //loop through nums 
  //if nums[idx] === val 
  //shift the rest of the elements left to overwrite that index
  let idx = 0;
  while (idx < nums.length) {
    if (nums[idx] === val) {
      for(let i = idx; i < nums.length - 1; i++) {
        nums[i] = nums[i+1];
      }
      nums.length -= 1;
      idx -= 1;
    }
    idx += 1;
  }
  return nums;
};

// var shiftElementsLeft = function(arr, idx) {
//   // if (idx === 0) return arr;
//   for(let i = idx; i < arr.length - 1; i++) {
//     arr[i] = arr[i+1];
//   }
//   return arr.slice(0, arr.length-1); //cannot use slice 
// };

console.log(removeElement([3, 3, 2], 3));