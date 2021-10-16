class Title < ApplicationRecord
  belongs_to :illustration
  has_many :votes

  validates :content, presence: true
  validates :user_name, presence: true

  def vote
    if self.vote_quantity.nil?
      self.vote_quantity = 1
    else
      self.vote_quantity += 1
    end
    self.save
  end
end
