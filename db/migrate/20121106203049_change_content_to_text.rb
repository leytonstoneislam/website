class ChangeContentToText < ActiveRecord::Migration
  def up
    change_table :entries do |e|
      e.change :content, :text
    end
  end

  def down
    change_table :entries do |e|
      e.change :content, :string
    end
  end
end
