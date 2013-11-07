class Sailboat < ActiveRecord::Base
  belongs_to :user

  has_attached_file :photo,
                    :styles => { :small => "200x200>", :regular => "600x600>" },
                    :path => ":rails_root/public/system/:attachment/:id/:style/:filename",
                    :url => "/system/:attachment/:id/:style/:filename"


  default_scope -> { order('created_at DESC') }

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

    boolean :featured
    time :featured_end_date
  end

end
