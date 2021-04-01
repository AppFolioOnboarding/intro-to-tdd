import sinon from 'sinon';

import { fizzbuzz } from "../src/fizzbuzz";

describe('fizzbuzz', () => {

  let logStub;

  beforeEach(() => {
    logStub = sinon.stub(console, 'log');
  })

  it('prints numbers', () => {
    fizzbuzz(1, 14);
    sinon.assert.called(logStub);
  })
});