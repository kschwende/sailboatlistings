class Sailboat < ActiveRecord::Base
  belongs_to :user

  validates :manufacturer, presence: true, length: { minimum: 2 }
  validates :model, presence: true, length: { minimum: 1 }
  validates :length, presence: true
  validates :price, presence: true
  validates :year, presence: true

  searchable do
    text :manufacturer, :boost => 5
    text :model, :boost => 3
    text :description
    string :manufacturer
  end

end
