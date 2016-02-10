class DaftarKerjaan < ActiveRecord::Base
  has_many :kerjaan_items
end
