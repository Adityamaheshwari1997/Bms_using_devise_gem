class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # belongs_to :theater , optional: true
  belongs_to :movie, optional:true

  validates :FirstName , :LastName , presence: true , format: {with: /\A[a-zA-Z]+\z/ , message: "Only letters allowed"} 
  validates :Username , presence: true , uniqueness: true

end
