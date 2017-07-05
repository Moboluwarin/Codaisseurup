class Event < ApplicationRecord
   belongs_to :user
   validates :name, presence: true
    has_and_belongs_to_many :categories
   validates :description, presence:true, length:{ maximum: 500 }
   def change
    change_column :price, :admin, :decimal, default: 0
    change_column :includes_food, :admin, :boolean, default: false
    change_column :includes_drinks, :admin, :boolean, default: false
    change_column :active, :admin, :boolean, default: true
  end
  def starts?
    starts_at=Time.now
  end
end
