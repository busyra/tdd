class Product < ActiveRecord::Base
  validates :name, presence: true
  validates :description, presence: true
  validates :price, presence: true

def product_summary
  "#{name}: #{description}, $#{price}"

end



end
