class Post < ApplicationRecord
  has_rich_text :body
  has_one_attached :image
  has_many :comments
  belongs_to :user
  belongs_to :category
  validates :title, :body, :category_id, presence: true
  acts_as_votable
end




# has_many :comments, dependent: :destroy
