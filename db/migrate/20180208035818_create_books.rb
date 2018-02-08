class CreateBooks < ActiveRecord::Migration[5.1]
  def change
    create_table :rooms do |t|
      t.string :name
    end

    create_table :chats do |t|
      t.belongs_to :room, index: true

      t.string :sender
      t.text :content

      t.timestamp
    end
  end
end
