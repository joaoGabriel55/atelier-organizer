class User < ApplicationRecord
  validates :name, presence: true
  validates :company, presence: true
  validates :email, presence: true, uniqueness: true
  validates :password, presence: true, length: { minimum: 6 }

  
  belongs_to :company
end
