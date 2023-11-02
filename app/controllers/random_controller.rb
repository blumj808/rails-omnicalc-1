class RandomController < ApplicationController
  def randomnew
    render({ :template => "game_templates/random_new" })
  end
  def random_results
    @the_min = params.fetch("user_min").to_f

    @the_max = params.fetch("user_max").to_f

    @the_result = rand(@the_min..@the_max)
  end
    render({ :template => "game_templates/random_results" })
  end
end
