class Item < ActiveRecord::Base
  belongs_to :item_type

  validates :name, presence: true
  validates :item_type, presence: true
end