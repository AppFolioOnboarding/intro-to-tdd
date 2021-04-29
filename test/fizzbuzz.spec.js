import sinon from 'sinon';

import { fizzbuzz } from '../src/fizzbuzz';

describe('fizzbuzz', () => {

  let logStub;

  beforeEach(() => {
    logStub = sinon.stub(console, 'log');
  });

  afterEach(() => {
    sinon.restore();
  });

  it('prints FizzBuzz if ...', () => {
        fizzbuzz(15);

    sinon.assert.calledOnceWithExactly(logStub, 'FizzBuzz');
  })

  it('prints Fizz if the input is 3', () => {
    fizzbuzz(3);

    sinon.assert.calledOnceWithExactly(logStub, 'Fizz');
  });

  it('prints Buzz if the input is 5', () => {
    fizzbuzz(5);

    sinon.assert.calledOnceWithExactly(logStub, 'Buzz');
  });

  it('prints 7 if the input is 7', () => {
    fizzbuzz(7);

    sinon.assert.calledOnceWithExactly(logStub, 7);
  });


});