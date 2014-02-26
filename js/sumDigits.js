function sumDigits(number) {
  digits = (Math.abs(number) + '').split('');
  sum    = 0

  for (var i = 0; i < digits.length; i++) {
    sum += +digits[i];
  }

  return sum;
}


console.log(sumDigits(123));
