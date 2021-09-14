class Title < ApplicationRecord
  belongs_to :illustration

  validates :content, presence: true
end
