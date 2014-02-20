countBits = (n) ->
  bin = parseInt(n,10).toString(2)
  cnt = 0
  cnt += 1 for char, i in bin when char == '1'
  
  cnt

console.log(countBits(1234))
