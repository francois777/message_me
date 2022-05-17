class Message < ApplicationRecord
  belongs_to :user

  validates :body, length: { minimum: 3 }
end
