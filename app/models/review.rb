class Review < ActiveRecord::Base
  belongs_to :restaurant

  validates :content, presence: true,
                      length: { minimum: 1 }
  validates :rating, presence: true,
                     length: { minimum: 1 },
                     allow_blank: false

  validates :restaurant, presence: true

end
