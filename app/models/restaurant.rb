class Restaurant < ActiveRecord::Base
  has_many :reviews, :dependent => :delete_all

  validates :name, presence: true,
                   length: { minimum: 1 }
  validates :address, presence: true,
                      length: { minimum: 1 }
  validates :category, presence: true,
                       length: { minimum: 1 }
  validates :phone_number, presence: true, allow_blank: true,
                           length: { minimum: 1 }

end
