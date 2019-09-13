class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, authentication_keys: [email: true, login: false]

attr_writer :login

def login
  @login || self.username || self.email
end
  
  has_many :links
  has_many :posts

  validates :username, presence: :true, uniqueness: { case_sensitive: false }
 # Only allow letter, number, underscore and punctuation.
  validates_format_of :username, with: /^[a-zA-Z0-9_\.]*$/, :multiline => true


  # validates :name, presence: true
end
