class User < ActiveRecord::Base
  has_many :orders

  # could return duplicates
  has_many :products, through: :orders

  # return unique products
  # has_many :products, -> { distinct }, through: :orders

  # give the method a nice name
  #has_many :purchased_products, -> { uniq }, through: :orders, source: :products

end
