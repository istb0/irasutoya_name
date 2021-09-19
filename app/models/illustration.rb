class Illustration < ApplicationRecord
  has_many :titles, dependent: :destroy

  validates :content, presence: true
end
