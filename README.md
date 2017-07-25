# Monte Carlo method to approximate the value of PI

This repository is prepared for

- Sandbox for trying new language
- Get a benchmark score for each programming language

## The way to Monte Carlo estimation of PI

https://www.google.com/search?q=monte+carlo+pi

Use a square with sides of length 1 and a quarter circle of radius 1.

## Why Monte Carlo estimation of PI is used ?

Since it uses major language elements.

e.g.
- If
- Loop
- Hash (or Tuple, Struct)
- Random
- Arithmetic
- Print

## Languages

### Ruby

https://www.ruby-lang.org/

```
ruby montecarlo.rb
```

or

```
chmod +x montecarlo.rb
./montecarlo.rb
```

### Nim

https://nim-lang.org/

```
nim c -d:release montecarlo.nim
./montecarlo
```

### Rust

https://www.rust-lang.org/

```
rustc -O montecarlo.rs
./montecarlo
```

### Lua

https://www.lua.org/

```
lua montecarlo.lua
```

or

```
chmod +x montecarlo.lua
./montecarlo.lua
```

or

```
luac -s montecarlo.lua
lua luac.out
```

### Go

https://golang.org/

```
go run montecarlo.go
```

or

```
go build montecarlo.go
./montecarlo
```

### Maybe added in the future...

- D

## References

- [Monte Carlo method - Wikipedia](https://en.wikipedia.org/wiki/Monte_Carlo_method)


