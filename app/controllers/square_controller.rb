class SquareController < ApplicationController
  def square
    @the_num = params.fetch("users_number").to_f

    @the_result = @the_num ** 2
  end
    render({ :template => "game_templates/square" })
  end
  def square_new
    render({ :template => "game_templates/new_square_calc" })
  end
end
