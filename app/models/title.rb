class Title < ApplicationRecord
  belongs_to :illustration

  validates :content, presence: true
  validates :user_name, presence: true
end
