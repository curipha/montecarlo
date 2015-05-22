#!/usr/bin/env lua

function getrand()
  return math.random()
end

function in_qsect(coord)
  return math.pow(coord.x, 2) + math.pow(coord.y, 2) <= 1
end

iteration = 800000

count_in_qsect = 0
for i = 1, iteration do
  if in_qsect({ x = getrand(), y = getrand() }) then
    count_in_qsect = count_in_qsect + 1
  end
end

print(("In quarter sector = %d / %d"):format(count_in_qsect, iteration))
print("Estimated Pi: " ..  count_in_qsect * 4 / iteration)

