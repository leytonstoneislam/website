class ChangeContentToTextHomepage < ActiveRecord::Migration
  def up
    change_table :homepageentries do |e|
      e.change :content, :text
    end
  end

  def down
    change_table :homepageentries do |e|
      e.change :content, :string
    end
  end
end
