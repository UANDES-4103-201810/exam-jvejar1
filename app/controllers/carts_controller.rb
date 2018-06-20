class CartsController < ApplicationController
  def index
    pizzas_ids=@json_chart.keys
    @pizzas=Pizza.where(id:pizzas_ids)

    if @pizzas.blank?
      flash[:notice]="There are no pizzas in the cart"
    end
  end


end
