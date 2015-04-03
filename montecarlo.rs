struct Coord { x:f64, y:f64 }

fn getrand() -> f64 {
  use std::rand;
  use std::rand::*;
  return rand::random::<f64>();
}

fn in_qsect(coord:Coord) -> bool {
  use std::num::Float;
  return coord.x.powf(2.0) + coord.y.powf(2.0) <= 1.0
}


static ITERATION:u32 = 800_000;

fn main() {
  let mut count_in_qsect:i32 = 0;

  for i in 0..ITERATION {
    if in_qsect(Coord { x:getrand(), y:getrand() }) {
      count_in_qsect += 1;
    }
  }

  println!("In quarter sector = {} / {}", count_in_qsect, ITERATION);
  println!("Estimated Pi: {}", (count_in_qsect as f64) * 4.0 / (ITERATION as f64));
}

