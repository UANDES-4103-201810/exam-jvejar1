class HomeController < ApplicationController
  require "json"
  def index
    @pizzas=Pizza.all
    puts @pizzas.as_json

  end
  def add_to_cart

    pizza_id=params[:id]
    @json_chart[pizza_id]=true

    set_cart_json(@json_chart)
    flash[:success]="Pizza added to cart!"
    redirect_to root_url
  end
end
