export function fizzbuzz(input) {
  if (input % 3 == 0) {
    console.log('Fizz');
  } else  if (input % 5 == 0) {
    console.log('Buzz');
  } else {
    console.log(input);
  }

}