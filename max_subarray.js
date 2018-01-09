function maxSubArray(array) {
  let max = 0;
  let current_sum = 0;
  for(let i = 0; i < array.length; i++) {
    current_sum += array[i];
    if (current_sum > max) {
      max = current_sum;
    } 
  }
}