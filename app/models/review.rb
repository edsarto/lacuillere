class Review < ActiveRecord::Base
  belongs_to :restaurant

  validates :content, presence: true,
                      length: { minimum: 1 }
  validates :rating, presence: true,
                     length: { minimum: 1 },
                     allow_blank: false,
                     numericality: { only_integer: true },
                     :inclusion => 0..5

  validates :restaurant, presence: true

end

