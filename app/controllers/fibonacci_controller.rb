class FibonacciController < ApplicationController
  def index
    @items = []
  end

  def generate_items
    @items = []
    number = params[:session][:number].to_i
    number.times do |i|
      @items << if i == 1
                  1
                elsif i != 0
                  @items[i - 2] + @items[i - 1]
                else
                  0
                end
    end
    render 'index'
  end
end
