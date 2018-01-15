/**
 * @param {string} s
 * @return {number}
 */
var lengthOfLastWord = function(s) {
  //split using space as delimter 
  //return length of last element  
  let words = s.trim().split(' ');
  return words[words.length-1].length;
};

console.log(lengthOfLastWord(''));