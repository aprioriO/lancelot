class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :clients
  has_many :questions
  has_many :projects, through: :clients
  has_many :timesheets, through: :projects

  validates :first_name, :last_name, :username, presence: true
end
