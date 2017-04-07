class Book < ApplicationRecord
  validates :title, :pages, :author_id, :amazon_url, :picture_url, presence: true
  has_many :reviews
  
  def rating
    if reviews.count == 0
      return 0
    end
    sum = 0
    reviews.each do |review|
      sum = sum + review.rating
    end
    sum/reviews.count
  end
end
