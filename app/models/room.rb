class Room < ActiveRecord::Base
  has_many :chats
end
