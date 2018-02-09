class Chat < ApplicationRecord
  belongs_to :room
  
  validates :content, :sender, presence: true
end
