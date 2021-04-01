export function fizzbuzz(int) {
  if (typeof int != 'number') {
    throw Error('Bad argument');
  }
  if (!/^\d+$/.test(int)) {
    throw Error('Bad argument');
  }

  if (int % 3 == 0 && int % 5 == 0) {
    return 'FizzBuzz';
  }

  if (int % 3 == 0) {
    return 'Fizz';
  }

  if (int % 5 == 0) {
    return 'Buzz';
  }

  return String(int);
}