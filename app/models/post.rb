class Post < ApplicationRecord
  has_many :comments
  belongs_to :user
  belongs_to :category
end

# has_many :comments, dependent: :destroy
