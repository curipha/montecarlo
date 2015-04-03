#!/usr/bin/env ruby

def getrand
  return rand(0.0..1.0)
end

def in_qsect?(coord)
  return coord[:x] ** 2 + coord[:y] ** 2 <= 1
end

ITERATION = 800_000

count_in_qsect = 0
ITERATION.times {
  count_in_qsect += 1 if in_qsect?({x: getrand, y: getrand})
}

puts "In quarter sector = #{count_in_qsect} / #{ITERATION}"
puts "Estimated Pi: #{(count_in_qsect * 4).to_f / ITERATION}"

