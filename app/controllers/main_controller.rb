class MainController < ApplicationController
  def square
    render({:template=>"game_templates/square"})
  end
  def square_result
    @num = params.fetch("number").to_f
    @results=@num**2
    render({:template=>"game_templates/square_result"})
  end
  
  def square_root
    render({:template=>"game_templates/square_root"})
  end
  def square_root_result
    @num = params.fetch("number").to_f
    @results=@num**0.5
    render({:template=>"game_templates/square_root_result"})
  end

  def payment
    render({:template=>"game_templates/payment"})
  end
  def payment_result
    @apr = params.fetch("apr").to_f
    @apr_month=@apr/100/12
    @yrs = params.fetch("yrs").to_f
    @months=@yrs*12
    @principal = params.fetch("principal").to_f
    @results=(@apr_month*@principal)/(1-(1+@apr_month)**(-1*@months))  
    render({:template=>"game_templates/payment_result"})
  end

  def random
    render({:template=>"game_templates/random"})
  end
  def random_result
    @min = params.fetch("min").to_f
    @max = params.fetch("max").to_f
    @results=rand(@min..@max)
    render({:template=>"game_templates/random_result"})
  end
end
