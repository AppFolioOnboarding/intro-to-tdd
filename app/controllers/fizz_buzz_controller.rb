class FizzBuzzController < ApplicationController
  def new
  end

  def create
    number = params.require(:fizz_buzz).permit(:number)[:number]
    render locals: { answer: FizzBuzzController.fizz_buzz(number) }
  end

  def self.fizz_buzz(_num)
    1
  end
end
