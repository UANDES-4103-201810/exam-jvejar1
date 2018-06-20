class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception,prepend: true
  before_action :get_cart_json
  require 'json'


  def get_cart_json
    chart=cookies[:chart]
    if chart.nil?
      cookies[:chart]=JSON.generate ({})
    end
    @json_chart=JSON.parse cookies[:chart]
  end

  def set_cart_json(json)
    chart=cookies[:chart]
    if chart.nil?
      cookies[:chart]=JSON.generate ({})
    end
    cookies[:chart]=JSON.generate(json)
  end

  def clear_cart
    cookies[:chart]=JSON.generate({})
  end
end
