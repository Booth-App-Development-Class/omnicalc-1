class ApplicationController < ActionController::Base



def blank_square_form

  render( { :template => "calculations_templates/square_form.html.erb"})

end


def calculate_square

  @num = params.fetch("user_input").to_f
  @square_of_num = @num ** 2

  render( { :template => "calculations_templates/square_results.html.erb"})

end


def calculate_random

  @lower = params.fetch("user_min").to_i
  @upper = params.fetch("user_max").to_i
  @result = rand(@lower..@upper)

  render( { :template => "calculations_templates/random_results.html.erb"})

end






end
