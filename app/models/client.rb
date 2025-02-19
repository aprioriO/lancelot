class Client < ApplicationRecord
  belongs_to :user
  has_many :projects, dependent: :destroy

  validates :name, presence: true

  scope :active, -> { where(archived: false) }
end
