class Order < ApplicationRecord
  has_one :delivery_info
  accepts_nested_attributes_for :delivery_info
end
