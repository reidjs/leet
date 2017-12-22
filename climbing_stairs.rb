#Cheated!
def climb_stairs(n)
  memoized = Hash.new(0)
  solve(0, n, memoized)
end 

def solve(i, n, memoized)
  return 0 if i > n 
  return 1 if i === n 
  return memoized[i] if memoized[i] > 0
  memoized[i] = solve(i + 1, n, memoized) + solve(i + 2, n, memoized)
  memoized[i]
end 

p climb_stairs(4)