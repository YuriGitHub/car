class Product < ApplicationRecord

  monetize :price_kopiykas

  has_many :images
  has_many :kinds
  accepts_nested_attributes_for :kinds
  accepts_nested_attributes_for :images


end
