class Event < ApplicationRecord
   belongs_to :user
   validates :name, presence: true

   validates :description, presence:true, length:{ maximum: 500 }
   def change
    change_column :price, :admin, :decimal, default: 0
    change_column :includes_food, :admin, :boolean, default: false
    change_column :includes_drinks, :admin, :boolean, default: false
    change_column :active, :admin, :boolean, default: true
  end

end
