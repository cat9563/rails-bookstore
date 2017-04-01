class Author < ApplicationRecord
 validates :first_name, :last_name, :bio, :picture_url, presence: true
end