#!/usr/bin/env coffee

spinWords = (sentence) ->
  words         = sentence.split(' ')
  spun_sentence = ''

  for word in words
    if word.length >= 5
      spun_sentence += "#{word.split('').reverse().join('')} "
    else
      spun_sentence += "#{word} "

  spun_sentence.trim()

#console.log spinWords( "Hey fellow warriors" )
#console.log spinWords( "This is a test")
#console.log spinWords( "This is another test" )
