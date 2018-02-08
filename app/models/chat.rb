class Chat < ActiveRecord::Base
  belongs_to :author
  
  validates :content, :name, presence: true
end
