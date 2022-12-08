class PayController < ApplicationController
  def index
  end

  def show_change
    denominations = [100, 50, 20, 10, 5, 1]
    change = params['session'][:payment].to_i - params['session'][:due].to_i
    denominations_index = 0
    @change_breakdown = []

    while change.positive? do
      current_denomination = denominations[denominations_index]
      if change >= current_denomination
        multiplier, change = change.divmod(current_denomination)
        @change_breakdown.append([current_denomination] * multiplier).flatten!
      end
      denominations_index += 1
    end
    @change_breakdown
  end
end
