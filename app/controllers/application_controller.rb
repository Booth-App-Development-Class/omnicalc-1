class ApplicationController < ActionController::Base



def blank_square_form

  render( { :template => "calculations_templates/square_form.html.erb"})

end


def blank_random_form

  render( { :template => "calculations_templates/random_form.html.erb"})

end


def blank_root_form

  render( { :template => "calculations_templates/root_form.html.erb"})

end

def blank_payment_form

  render( { :template => "calculations_templates/payment_form.html.erb"})

end

def calculate_square

  @num = params.fetch("user_input").to_f
  @square_of_num = @num ** 2

  render( { :template => "calculations_templates/square_results.html.erb"})

end


def calculate_random

  @lower = params.fetch("user_min").to_f
  @upper = params.fetch("user_max").to_f
  @result = rand(@lower..@upper)

  render( { :template => "calculations_templates/random_results.html.erb"})

end




def calculate_root

  @num = params.fetch("user_root").to_f
  @square_of_num = @num ** 0.5

  render( { :template => "calculations_templates/root_results.html.erb"})

end


def calculate_payment

  @apr_cacl = params.fetch("user_apr").to_f
  @apr_form = params.fetch("user_apr").to_f/100/12
  @apr = @apr_cacl.to_s(:percentage)
  @years = params.fetch("user_years").to_i
  @years_form = @years*12
  @principal_calc = params.fetch("user_principal").to_i
  @principal = @principal_calc.to_s(:currency)

  @numerator = @apr_form * (@principal_calc)
  @denominator = 1 - (1 + @apr_form) ** (-1*@years_form)
  @result_form = @numerator/@denominator
  @result_payment = @result_form.to_s(:currency)

  render( { :template => "calculations_templates/payment_results.html.erb"})

end





end
