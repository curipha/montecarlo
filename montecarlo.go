package main

import (
  "fmt"
  "math"
  "math/rand"
  "time"
)

type Coord struct { x, y float64 }

func getrand() float64 {
  return r.Float64()
}

func in_qsect(coord *Coord) bool {
  return math.Pow(coord.x, 2) + math.Pow(coord.y, 2) <= 1
}


const ITERATION = 800000

var r = rand.New(rand.NewSource(time.Now().UnixNano()))

func main() {
  count_in_qsect := 0

  for i := 0; i < ITERATION; i++ {
    if in_qsect( &Coord{ getrand(), getrand() } ) {
      count_in_qsect++
    }
  }

  fmt.Println(`In quarter sector =`, count_in_qsect, `/`, ITERATION)
  fmt.Println(`Estimated Pi:`, float64(count_in_qsect) * 4 / ITERATION)
}
