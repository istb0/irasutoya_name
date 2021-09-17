class Title < ApplicationRecord
  belongs_to :illustration
  has_many :votes

  validates :content, presence: true
  validates :user_name, presence: true

  def vote(title)
    if title.vote_quantity.nil?
      title.vote_quantity = 1
    else
      title.vote_quantity += 1
    end
    title.save
  end
end
