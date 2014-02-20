#!/usr/bin/env coffee

likes = (names) ->
  return "no one likes this"      if names.length == 0
  return "#{names[0]} likes this" if names.length == 1

  joiner = (names) ->
    list = ''
    
    for name in names 
      if name is names[names.length - 1] or name is names[names.length - 2]
        list += "#{names[names.length - 2]} and #{names[names.length - 1]}"
        return list
      else
        list += "#{name}, "

  like_str = ''
  if names.length < 4
    like_str += "#{joiner(names)} like this"
  else
    like_str += "#{names[0]}, #{names[1]} and #{names.length - 2} others like this"

  like_str

#console.log likes([]) # must return "no one likes this"
#console.log likes(['Peter']) # must return "Peter likes this"
#console.log likes(['Jacob', 'Alex']) # must return "Jacob and Alex like this"
#console.log likes(['Max', 'John', 'Mark']) # must return "Max, John and Mark like this"
#console.log likes(['Alex', 'Jacob', 'Mark', 'Max']) # must return "Alex, Jacob and 2 others like this"
