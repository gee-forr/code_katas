#!/usr/bin/env node

function count(string) {
  counts = {};

  string.split('').forEach(function(chr) {
    if (counts.hasOwnProperty(chr)) {
      counts[chr] += 1;
    }
    else {
      counts[chr] = 1;
    }
  });

  return counts;
}

console.log(count('aba'));
