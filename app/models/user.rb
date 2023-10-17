class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_one_attached :photo
  validates :role, presence: true

  enum role: { Star: 'Star', Angel: 'Angel', Company: 'Company' }

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
