class Company < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_one_attached :photo
  validates :company_name, presence: true

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
