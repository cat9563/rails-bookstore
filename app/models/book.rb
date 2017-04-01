class Book < ApplicationRecord
  validates :title, :pages, :author_id, :amazon_url, :picture_url, presence: true
end
