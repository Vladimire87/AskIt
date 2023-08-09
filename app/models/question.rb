class Question < ApplicationRecord
  has_many :answers

  validates :title, :body, presence: true

  def formatted_created_at
    created_at.strftime("%Y-%m-%d %H:%M:%S")
  end
end
