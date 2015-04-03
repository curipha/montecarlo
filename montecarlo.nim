import math

type Coord = tuple[ x:float, y:float ]

proc getrand():float = random(1.0)

proc in_qsect(coord:Coord):bool =
  result = pow(coord.x, 2) + pow(coord.y, 2) <= 1


const ITERATION:int = 800_000

randomize()

var count_in_qsect:int = 0

for i in 1..ITERATION:
  if in_qsect((x: getrand(), y:getrand())):
    inc(count_in_qsect)

echo("In quarter sector = ", count_in_qsect, " / ", ITERATION)
echo("Estimated Pi: ", count_in_qsect * 4 / ITERATION)

