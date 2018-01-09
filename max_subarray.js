//Doesn't work correctly 
function maxSubArray(array) {
  let maxEndingHere = array[0];
  let currentMax = array[0];
  let sum = array[0];
  for(let i = 1; i < array.length; i++) {
    sum += array[i];
    if (maxEndingHere > currentMax) {
      currentMax = maxEndingHere;
    } else {
      maxEndingHere = 0;  
    }
  }
  return currentMax;
}

let result = maxSubArray([3,-1,4,-1,5,-10,4]);
console.log(result);