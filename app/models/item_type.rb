class ItemType < ActiveRecord::Base
  has_many :items

  validates :name, presence: true

  def item_count
    items.count
  end
end
