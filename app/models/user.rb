class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable
    has_many :votes, foreign_key: "user_id"
    has_many :articles, foreign_key: "author_id"

    

    has_one_attached :avatar
end
