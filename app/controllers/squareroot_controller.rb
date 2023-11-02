class SquarerootController < ApplicationController
  def squareroot
    render({ :template => "game_templates/square_root_new" })
  end

  def squareroot_new
    @the_num = params.fetch("user_number").to_f

    @the_result = Math.sqrt(@the_num)
  end
    render({ :template => "game_templates/square_root_results" })
  end
end
