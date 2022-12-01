class Shop < ActiveRecord::Base
  has_many :products

  validates_presence_of :phone

  def shop_name_printer
    name.starts_with?("M") ? "Starts with M!" : "Does not start with M!"
  end 

  def update_shop_name
    update!(name: 'updated_name')
  end
end
