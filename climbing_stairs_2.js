const climbStairs = function(n) {
  let memoized = {};
  return solve(0, n, memoized);
};

const solve = function(i, n, memo) {
  if (i > n)
    return 0;
  if (i === n)
    return 1;
  memo[i] = solve(i+1, n, memo) + solve(i+2, n, memo);
  return memo[i];
};

console.log(climbStairs(4));
