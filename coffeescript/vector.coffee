#!/usr/bin/env coffee

class Vector
  constructor: (@vectors) ->

  sameLength: (other_vector) -> other_vector.vectors.length == @vectors.length ? true : false
  throwErr:   ()             -> throw "Vectors are not the same"
  toString:   ()             -> str = "(#{@vectors.join})"

  add: (other_vector) ->
    this.throwErr unless this.sameLength(other_vector)

    addition = []
    addition.push vector + other_vector.vectors[i] for vector, i in @vectors

    return new Vector(addition)

  subtract: (other_vector) ->
    this.throwErr unless this.sameLength(other_vector)

    subtraction = []
    subtraction.push vector - other_vector.vectors[i] for vector, i in @vectors

    return new Vector(subtraction)

  dot: (other_vector) ->
    this.throwErr unless this.sameLength(other_vector)

    multiplication = []
    multiplication.push vector * other_vector.vectors[i] for vector, i in @vectors

    return new Vector(multiplication)

  norm: () ->
    squares    = []; squares.push(vector ** 2)    for vector         in @vectors
    square_sum = 0;  square_sum += squared_vector for squared_vector in squares

    return Math.sqrt(square_sum)

  equals: (other_vector) ->
    this.throwErr unless this.sameLength(other_vector)

    return false for vector, i in @vectors when vector != other_vector[i]
    true

v = new Vector([1, 2, 3])
a = new Vector([3, 4, 5])
b = new Vector([1, 2, 3, 4])

x = v.add(a)
y = v.subtract(a)
z = v.dot(a)
s = v.norm()

console.log(x)
console.log(y)
console.log(z)
console.log(s)
console.log(a.sameLength(b))
console.log(a.sameLength(z))
