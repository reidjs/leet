// You are given two non-empty linked lists representing two non-negative integers. 
// The digits are stored in reverse order and each of their nodes contain a single digit. 
// Add the two numbers and return it as a linked list.

// You may assume the two numbers do not contain any leading zero, except the number 0 itself.

// Example

// Input: (2 -> 4 -> 3) + (5 -> 6 -> 4)
// Output: 7 -> 0 -> 8
// Explanation: 342 + 465 = 807.
/**
 * Definition for singly-linked list.
 * function ListNode(val) {
 *     this.val = val;
 *     this.next = null;
 * }
 * param {ListNode} l1
 * param {ListNode} l2
 * return {ListNode}
*/

//This worked for 1560/1562 test cases 
function ListNode(val) {
  this.val = val;
  this.next = null;
}

const linkedListToNum = node => {
  let vals = [];
  while (node) {
    vals.unshift(node.val);
    node = node.next;
  }
  return Number(vals.join(""));
};

//num = 293
const numToLinkedList = num => {
  let reversedDigits = getReversedDigits(num); //reversedDigits = [3, 9, 2]
  let prev_node = null;
  let node = null;
  let head_node = null;
  for (let i = 0; i < reversedDigits.length; i++) {
    node = new ListNode(reversedDigits[i]);
    if (prev_node)
      prev_node.next = node; 
    else 
      head_node = node;
    prev_node = node; 
  }
  return head_node;
};


const readLinkedList = node => {
  while (node) {
    console.log(node.val);
    node = node.next;
  }
};

const addTwoLinkedLists = (l1, l2) => {
  let n1 = linkedListToNum(l1);
  let n2 = linkedListToNum(l2);

  let sum = n1 + n2;
  return numToLinkedList(sum);
};


//return array of digits 
const getReversedDigits = num => {
  let digits = [];
  while (num > 9) {
    digits.push(num % 10);
    num = Math.floor(num / 10);
  }
  digits.push(num);
  return digits;
};

// let x = new ListNode(5);
// let y = new ListNode(8);
// let a = new ListNode(1);
// let b = new ListNode(2);
// x.next = y;
// a.next = b;

// let z = numToLinkedList(594);
// let n = linkedListToNum(z);
// console.log(n);
// readLinkedList(z);

