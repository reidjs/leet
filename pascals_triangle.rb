#untested
def generate(num_rows)
  return [[1]] if num_rows == 1
  return [[1,1]] if num_rows == 2
  prev_row = generate(num-1)[-1]
  new_row = [1]
  num_rows.times - 1 do |i|
    new_row << prev_row[i] + prev_row[i+1]
  end 
  new_row << 1

end 
