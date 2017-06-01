class FizzBuzzController < ApplicationController
  def new
  end

  def create
    number = params.require(:fizz_buzz).permit(:number)[:number]
    render locals: { answer: FizzBuzzer.fizz_buzz(number) }
  end
end
