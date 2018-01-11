// Given a collection of intervals, merge all overlapping intervals.

// For example,
// Given [1,3],[2,6],[8,10],[15,18],
// return [1,6],[8,10],[15,18].
/**
 * Definition for an interval.
 * function Interval(start, end) {
 *     this.start = start;
 *     this.end = end;
 * }
 */
/**
 * @param {Interval[]} intervals
 * @return {Interval[]}
 */
function Interval(start, end) {
     this.start = start;
     this.end = end;
}
var merge = function(intervals) {
  if (intervals.length == 0) return [];
  let min = 0;
  let max = 0;
  let range = {};
  for(let i = 0; i < intervals.length; i ++) {
    for(let j = intervals[i].start; j <= intervals[i].end; j++) {
      // console.log(intervals[i], j);
      range[j] = true;
    }
  }
  let result = [];
  let ranges = Object.keys(range);   
  // let last_value = ranges[0];
  let rangeStart = null;
  for(let i = 0; i < ranges.length-2; i++) {
    // console.log(ranges[i]);
    let this_value = parseInt(ranges[i]);
    let next_value = parseInt(ranges[i + 1]);
    if (rangeStart === null)
      rangeStart = parseInt(this_value);
    // console.log("this:", this_value, "next:", next_value);
    if (this_value + 1 < next_value) {
      // console.log('here');
      result.push([rangeStart, parseInt(ranges[i])]);
      rangeStart = parseInt(ranges[i+1]);
    }
  }
  // console.log(rangeStart);
  let lastValue = parseInt(ranges[ranges.length-1]);
  result.push([rangeStart, lastValue]);
  return result; 
};

const a = new Interval(1,3);
const b = new Interval(2,6);
const c = new Interval(8,10);
const d = new Interval(12,15);
const e = new Interval(13,14);
console.log(merge([a,d,e, c, b]));