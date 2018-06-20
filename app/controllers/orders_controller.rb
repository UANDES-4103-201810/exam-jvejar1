class OrdersController < ApplicationController
  before_action :get_params
  def create



    order=Order.new(get_params)
    if order.save
    end

    delivery_info_params=get_delivery_info
    delivery_info_params[:order_id]=order.id
    delivery_info=DeliveryInfo.new(delivery_info_params)
    delivery_info.save
    @json_chart.keys.each do |pizza_id|
      PizzaOrder.create(pizza_id:pizza_id,order_id:order.id)
    end


    flash[:success]="The cart has been purchased and cleaned!"
    clear_cart
    redirect_to root_path

  end

  def get_params
    params.require(:order).permit(:payment)
  end
  def get_delivery_info
    params.require(:delivery_info).permit(:address1,:address2,:phone)
  end
end
