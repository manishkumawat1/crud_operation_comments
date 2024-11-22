class Bloge < ApplicationRecord
  has_many :comments, dependent: :destroy

  validates :title, presence: true
   validates :discription, presence: true, length: { minimum: 5 }
end
