class FizzBuzzController < ApplicationController
  def new
  end

  def create
    params.require(:fizz_buzz).permit(:number)
  end
end
