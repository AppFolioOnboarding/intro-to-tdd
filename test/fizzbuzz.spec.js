import { expect } from "chai";

import { fizzbuzz } from "../src/fizzbuzz";

describe('fizzbuzz', () => {

  it('fails if passed a bad argument', () => {
    expect(() => fizzbuzz(-1)).to.throw();
    expect(() => fizzbuzz('foo')).to.throw();
    expect(() => fizzbuzz(14.1)).to.throw();
    expect(() => fizzbuzz(15)).to.throw();
  });

  it('returns Fizz if the integer is evenly divisible by 3', () => {
    expect(fizzbuzz(3)).to.equal('Fizz');
    expect(fizzbuzz(9)).to.equal('Fizz');
  });

  it('returns Buzz if the integer is evenly divisible by 5', () => {
    expect(fizzbuzz(5)).to.equal('Buzz');
    expect(fizzbuzz(10)).to.equal('Buzz');
  });

  it('returns the integer otherwise', () => {
    let input = 7;
    expect(fizzbuzz(input)).to.equal(String(input));
    input = 13;
    expect(fizzbuzz(input)).to.equal(String(input));
  });
});