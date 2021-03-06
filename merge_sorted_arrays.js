// Given two sorted integer arrays nums1 and nums2, merge nums2 into nums1 as one sorted array.

// Note:#hi 
// You may assume that nums1 has enough space (size that is greater or equal to m + n) to hold additional 
// elements from nums2. 
// The number of elements initialized in nums1 and nums2 are m and n respectively.
/**
 * @param {number[]} nums1
 * @param {number} m
 * @param {number[]} nums2
 * @param {number} n
 * @return {void} Do not return anything, modify nums1 in-place instead.
 */
var merge = function(nums1, m, nums2, n) {
    let idx1 = 0;
    let idx2 = 0;
    let idx3 = n; //act like a store 
    while (idx2 < n) {
      if (nums1[idx1] > nums2[idx2]) {
        let t = nums1[idx1]

        swap(nums1, idx1, nums2, idx2);
        idx2
      } 
    }
};

var swap = function(nums1, idx1, nums2, idx2) {
  let t = nums1[idx1];
  nums1[idx1] = nums2[idx2];
  nums2[idx2] = t;
};