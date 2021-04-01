export function fizzbuzz(int) {
  if (typeof int != 'number') {
    throw Error('Bad argument');
  }
  if (!/^\d+$/.test(int)) {
    throw Error('Bad argument');
  }
  if (int < 1) {
    throw Error('Bad argument');
  }
  if (int > 14) {
    throw Error('Bad argument');
  }

  if (int % 3 == 0) {
    return 'Fizz';
  }

  if (int % 5 == 0) {
    return 'Buzz';
  }

  return String(int);
}