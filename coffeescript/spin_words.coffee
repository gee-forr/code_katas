#!/usr/bin/env coffeescript

spinwords = (sentence) ->
  words         = sentence.split(' ')
  spun_sentence = ''

  for word in words
    if word.length >= 5
      spun_sentece += word.split('').reverse().join('')
    else
      spun_sentece += word

  spun_sentece


